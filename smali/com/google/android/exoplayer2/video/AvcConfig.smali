.class public final Lcom/google/android/exoplayer2/video/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthAspectRatio:F


# direct methods
.method private constructor <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 99
    iput p2, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 102
    iput p5, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 103
    iput-object p6, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method private static buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;
    .locals 9

    const/4 v0, 0x4

    .line 48
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_3

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 60
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v5, -0x1

    if-lez v0, :cond_2

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 69
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    invoke-static {v0, v4, p0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object p0

    .line 71
    iget v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    .line 72
    iget v1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    .line 73
    iget v2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 74
    iget v5, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->profileIdc:I

    iget v6, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget p0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 75
    invoke-static {v5, v6, p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    move v5, v0

    move v6, v1

    move v7, v2

    goto :goto_2

    :cond_2
    move-object v8, v2

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 79
    :goto_2
    new-instance p0, Lcom/google/android/exoplayer2/video/AvcConfig;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/video/AvcConfig;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V

    return-object p0

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing AVC config"

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
