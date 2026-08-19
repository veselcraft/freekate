.class Lcom/felipecsl/gifimageview/library/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoder"


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/felipecsl/gifimageview/library/GifHeader;

.field private isFirstFrameTransparent:Z

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/felipecsl/gifimageview/library/GifHeaderParser;

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B

.field private workBuffer:[B

.field private workBufferPosition:I

.field private workBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 198
    new-instance v0, Lcom/felipecsl/gifimageview/library/SimpleBitmapProvider;

    invoke-direct {v0}, Lcom/felipecsl/gifimageview/library/SimpleBitmapProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;-><init>(Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;)V

    return-void
.end method

.method constructor <init>(Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    .line 114
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    .line 193
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    .line 194
    new-instance p1, Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {p1}, Lcom/felipecsl/gifimageview/library/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    return-void
.end method

.method private averageColorsNear(III)I
    .locals 9

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 614
    :goto_0
    iget v7, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    array-length v8, v7

    if-ge v1, v8, :cond_1

    if-ge v1, p2, :cond_1

    .line 615
    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    .line 616
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p3

    move p3, p1

    .line 628
    :goto_1
    iget v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_3

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    array-length v7, v1

    if-ge p3, v7, :cond_3

    if-ge p3, p2, :cond_3

    .line 629
    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    .line 630
    iget-object v7, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    aget v1, v7, v1

    if-eqz v1, :cond_2

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    return v0

    .line 642
    :cond_4
    div-int/2addr v2, v6

    shl-int/lit8 p1, v2, 0x18

    div-int/2addr v3, v6

    shl-int/lit8 p2, v3, 0x10

    or-int/2addr p1, p2

    div-int/2addr v4, v6

    shl-int/lit8 p2, v4, 0x8

    or-int/2addr p1, p2

    div-int/2addr v5, v6

    or-int/2addr p1, v5

    return p1
.end method

.method private decodeBitmapData(Lcom/felipecsl/gifimageview/library/GifFrame;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 653
    iput v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    .line 654
    iput v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    if-eqz v1, :cond_0

    .line 657
    iget-object v3, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget v4, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->bufferFrameStart:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez v1, :cond_1

    .line 660
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v3, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    iget v1, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    iget v1, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->ih:I

    :goto_0
    mul-int v3, v3, v1

    .line 665
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v3, :cond_3

    .line 667
    :cond_2
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    invoke-interface {v1, v3}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    .line 669
    :cond_3
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    const/16 v4, 0x1000

    if-nez v1, :cond_4

    new-array v1, v4, [S

    .line 670
    iput-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    .line 672
    :cond_4
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    if-nez v1, :cond_5

    new-array v1, v4, [B

    .line 673
    iput-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    .line 675
    :cond_5
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    if-nez v1, :cond_6

    const/16 v1, 0x1001

    new-array v1, v1, [B

    .line 676
    iput-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    .line 680
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readByte()I

    move-result v1

    const/4 v5, 0x1

    shl-int v6, v5, v1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    add-int/2addr v1, v5

    shl-int v9, v5, v1

    sub-int/2addr v9, v5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    .line 689
    iget-object v11, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    aput-short v2, v11, v10

    .line 690
    iget-object v11, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const/4 v10, -0x1

    move/from16 v19, v1

    move/from16 v17, v8

    move/from16 v18, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_2
    if-ge v11, v3, :cond_13

    const/4 v2, 0x3

    if-nez v12, :cond_9

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readBlock()I

    move-result v12

    if-gtz v12, :cond_8

    .line 701
    iput v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    goto/16 :goto_8

    :cond_8
    const/4 v13, 0x0

    .line 707
    :cond_9
    iget-object v4, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    add-int/2addr v15, v4

    add-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v5

    add-int/2addr v12, v10

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v10, v20

    move/from16 v23, v21

    :goto_3
    if-lt v14, v5, :cond_12

    and-int v2, v15, v18

    shr-int/2addr v15, v5

    sub-int/2addr v14, v5

    if-ne v2, v6, :cond_a

    move v5, v1

    move v4, v8

    move/from16 v18, v9

    const/4 v2, 0x3

    const/4 v10, -0x1

    goto :goto_3

    :cond_a
    if-le v2, v4, :cond_b

    move/from16 v21, v1

    const/4 v1, 0x3

    .line 729
    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    goto :goto_4

    :cond_b
    move/from16 v21, v1

    const/4 v1, 0x3

    if-ne v2, v7, :cond_c

    :goto_4
    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v20, v10

    move/from16 v1, v21

    move/from16 v21, v23

    goto/16 :goto_7

    :cond_c
    const/4 v1, -0x1

    if-ne v10, v1, :cond_d

    .line 738
    iget-object v10, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    add-int/lit8 v19, v22, 0x1

    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    aget-byte v1, v1, v2

    aput-byte v1, v10, v22

    move v10, v2

    move/from16 v23, v10

    move/from16 v22, v19

    move/from16 v1, v21

    const/4 v2, 0x3

    goto :goto_3

    :cond_d
    if-lt v2, v4, :cond_e

    .line 745
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    add-int/lit8 v19, v22, 0x1

    move/from16 v24, v2

    move/from16 v2, v23

    int-to-byte v2, v2

    aput-byte v2, v1, v22

    move v1, v10

    move/from16 v22, v19

    goto :goto_5

    :cond_e
    move/from16 v24, v2

    move/from16 v1, v24

    :goto_5
    if-lt v1, v6, :cond_f

    .line 749
    iget-object v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    add-int/lit8 v19, v22, 0x1

    move/from16 v23, v6

    iget-object v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    aget-byte v6, v6, v1

    aput-byte v6, v2, v22

    .line 750
    iget-object v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    aget-short v1, v2, v1

    move/from16 v22, v19

    move/from16 v6, v23

    goto :goto_5

    :cond_f
    move/from16 v23, v6

    .line 752
    iget-object v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 753
    iget-object v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    add-int/lit8 v19, v22, 0x1

    move/from16 v25, v7

    int-to-byte v7, v1

    aput-byte v7, v6, v22

    const/16 v6, 0x1000

    if-ge v4, v6, :cond_10

    .line 757
    iget-object v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    int-to-short v10, v10

    aput-short v10, v6, v4

    .line 758
    aput-byte v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    and-int v2, v4, v18

    const/16 v6, 0x1000

    if-nez v2, :cond_10

    if-ge v4, v6, :cond_10

    add-int/lit8 v5, v5, 0x1

    add-int v18, v18, v4

    :cond_10
    move/from16 v22, v19

    :goto_6
    if-lez v22, :cond_11

    .line 769
    iget-object v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    add-int/lit8 v7, v16, 0x1

    iget-object v10, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    add-int/lit8 v22, v22, -0x1

    aget-byte v10, v10, v22

    aput-byte v10, v2, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v7

    goto :goto_6

    :cond_11
    move/from16 v6, v23

    move/from16 v10, v24

    move/from16 v7, v25

    const/4 v2, 0x3

    move/from16 v23, v1

    move/from16 v1, v21

    goto/16 :goto_3

    :cond_12
    move/from16 v2, v23

    move/from16 v21, v2

    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v20, v10

    :goto_7
    const/4 v2, 0x0

    const/16 v4, 0x1000

    const/4 v5, 0x1

    const/4 v10, -0x1

    goto/16 :goto_2

    :cond_13
    :goto_8
    move/from16 v1, v16

    :goto_9
    if-ge v1, v3, :cond_14

    .line 777
    iget-object v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    const/4 v4, 0x0

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    return-void
.end method

.method private getHeaderParser()Lcom/felipecsl/gifimageview/library/GifHeaderParser;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->parser:Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    invoke-direct {v0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->parser:Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->parser:Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 846
    iget-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    if-eqz v0, :cond_0

    .line 847
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 848
    :goto_0
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    iget v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    invoke-interface {v1, v2, v3, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 849
    invoke-static {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private readBlock()I
    .locals 7

    .line 815
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readByte()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    .line 818
    :try_start_0
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    if-nez v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    const/16 v3, 0xff

    invoke-interface {v2, v3}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    .line 821
    :cond_0
    iget v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    iget v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lt v2, v0, :cond_1

    .line 824
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    invoke-static {v2, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    iget v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    goto :goto_0

    .line 826
    :cond_1
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v3, v0, :cond_2

    .line 828
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    iget v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    iget v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    iput v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    .line 830
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readChunkIfNeeded()V

    sub-int v3, v0, v2

    .line 832
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    iget v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    goto :goto_0

    .line 835
    :cond_2
    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 838
    sget-object v3, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    const-string v4, "Error Reading Block"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    :cond_3
    :goto_0
    return v0
.end method

.method private readByte()I
    .locals 3

    .line 801
    :try_start_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readChunkIfNeeded()V

    .line 802
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    iget v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    const/4 v0, 0x1

    .line 804
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    const/4 v0, 0x0

    return v0
.end method

.method private readChunkIfNeeded()V
    .locals 4

    .line 785
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    iget v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    if-le v0, v1, :cond_0

    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    invoke-interface {v0, v1}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    :cond_1
    const/4 v0, 0x0

    .line 791
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    .line 792
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    .line 793
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 854
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-void
.end method

.method private setPixels(Lcom/felipecsl/gifimageview/library/GifFrame;Lcom/felipecsl/gifimageview/library/GifFrame;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 498
    iget-object v10, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainScratch:[I

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    .line 501
    iget v2, v2, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    if-lez v2, :cond_3

    if-ne v2, v12, :cond_2

    .line 507
    iget-boolean v2, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->transparency:Z

    if-nez v2, :cond_0

    .line 508
    iget-object v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v2, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I

    goto :goto_0

    .line 509
    :cond_0
    iget v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    if-nez v2, :cond_1

    .line 513
    iput-boolean v14, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    :cond_1
    const/4 v2, 0x0

    .line 515
    :goto_0
    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    :cond_2
    if-ne v2, v11, :cond_3

    .line 516
    iget-object v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    .line 518
    iget v8, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 524
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->decodeBitmapData(Lcom/felipecsl/gifimageview/library/GifFrame;)V

    .line 526
    iget v2, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->ih:I

    iget v3, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    .line 527
    iget v4, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->iy:I

    div-int/2addr v4, v3

    .line 528
    iget v5, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    div-int/2addr v5, v3

    .line 529
    iget v6, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->ix:I

    div-int/2addr v6, v3

    const/16 v3, 0x8

    .line 534
    iget v7, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_3
    if-ge v13, v2, :cond_e

    .line 537
    iget-boolean v15, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->interlace:Z

    if-eqz v15, :cond_9

    const/4 v15, 0x4

    if-lt v8, v2, :cond_8

    add-int/lit8 v9, v9, 0x1

    if-eq v9, v12, :cond_7

    if-eq v9, v11, :cond_6

    if-eq v9, v15, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x2

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x4

    const/4 v8, 0x2

    goto :goto_4

    :cond_7
    const/4 v8, 0x4

    :cond_8
    :goto_4
    add-int v15, v8, v3

    goto :goto_5

    :cond_9
    move v15, v8

    move v8, v13

    :goto_5
    add-int/2addr v8, v4

    .line 560
    iget v11, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    if-ge v8, v11, :cond_d

    .line 561
    iget v11, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    mul-int v8, v8, v11

    add-int v16, v8, v6

    add-int v12, v16, v5

    add-int v14, v8, v11

    if-ge v14, v12, :cond_a

    add-int v12, v8, v11

    .line 571
    :cond_a
    iget v8, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    mul-int v11, v13, v8

    iget v14, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    mul-int v11, v11, v14

    sub-int v14, v12, v16

    mul-int v14, v14, v8

    add-int/2addr v14, v11

    move/from16 v8, v16

    :goto_6
    if-ge v8, v12, :cond_d

    move/from16 p2, v2

    .line 575
    iget v2, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    invoke-direct {v0, v11, v14, v2}, Lcom/felipecsl/gifimageview/library/GifDecoder;->averageColorsNear(III)I

    move-result v2

    if-eqz v2, :cond_b

    .line 577
    aput v2, v10, v8

    goto :goto_7

    .line 578
    :cond_b
    iget-boolean v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    if-nez v2, :cond_c

    if-eqz v7, :cond_c

    const/4 v2, 0x1

    .line 579
    iput-boolean v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    .line 581
    :cond_c
    :goto_7
    iget v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    add-int/2addr v11, v2

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    goto :goto_6

    :cond_d
    move/from16 p2, v2

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    move v8, v15

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x1

    goto :goto_3

    .line 588
    :cond_e
    iget-boolean v2, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->savePrevious:Z

    if-eqz v2, :cond_11

    iget v1, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 590
    :cond_f
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_10

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 593
    :cond_10
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 598
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    .line 599
    iget v7, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    move-object v1, v9

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method


# virtual methods
.method advance()V
    .locals 2

    .line 228
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v1, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    return-void
.end method

.method getDelay(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 240
    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/felipecsl/gifimageview/library/GifFrame;

    iget p1, p1, Lcom/felipecsl/gifimageview/library/GifFrame;->delay:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method getFrameCount()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    return v0
.end method

.method getHeight()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    return v0
.end method

.method getNextDelay()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getDelay(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 10

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    if-gez v0, :cond_2

    .line 306
    :cond_0
    sget-object v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v4, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    iput v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    .line 312
    :cond_2
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 318
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    .line 320
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v4, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    iget v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 322
    iget v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_4

    .line 324
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v6, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/felipecsl/gifimageview/library/GifFrame;

    goto :goto_0

    .line 326
    :cond_4
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v5, v5, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    invoke-virtual {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getFrameCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 329
    :goto_0
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v7, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I

    .line 332
    iget-object v8, v4, Lcom/felipecsl/gifimageview/library/GifFrame;->lct:[I

    if-nez v8, :cond_5

    .line 333
    iget-object v6, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->gct:[I

    iput-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    goto :goto_1

    .line 335
    :cond_5
    iput-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    .line 336
    iget v8, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->bgIndex:I

    iget v9, v4, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    if-ne v8, v9, :cond_6

    .line 337
    iput v0, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I

    .line 342
    :cond_6
    :goto_1
    iget-boolean v6, v4, Lcom/felipecsl/gifimageview/library/GifFrame;->transparency:Z

    if-eqz v6, :cond_7

    .line 343
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    iget v8, v4, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    aget v9, v6, v8

    .line 345
    aput v0, v6, v8

    move v0, v9

    .line 347
    :cond_7
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    if-nez v6, :cond_9

    .line 348
    sget-object v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "No Valid Color Table"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_8
    iput v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-object v3

    .line 357
    :cond_9
    :try_start_1
    invoke-direct {p0, v4, v5}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setPixels(Lcom/felipecsl/gifimageview/library/GifFrame;Lcom/felipecsl/gifimageview/library/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 360
    iget-boolean v2, v4, Lcom/felipecsl/gifimageview/library/GifFrame;->transparency:Z

    if-eqz v2, :cond_a

    .line 361
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    iget v3, v4, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    aput v0, v2, v3

    .line 363
    :cond_a
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iput v7, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    monitor-exit p0

    return-object v1

    .line 313
    :cond_b
    :goto_2
    :try_start_2
    sget-object v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :cond_c
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWidth()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    return v0
.end method

.method declared-synchronized read([B)I
    .locals 1

    monitor-enter p0

    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getHeaderParser()Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->setData([B)Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->parseHeader()Lcom/felipecsl/gifimageview/library/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    if-eqz p1, :cond_0

    .line 486
    invoke-virtual {p0, v0, p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setData(Lcom/felipecsl/gifimageview/library/GifHeader;[B)V

    .line 489
    :cond_0
    iget p1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 432
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 2

    monitor-enter p0

    if-lez p3, :cond_2

    .line 440
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    .line 442
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    .line 443
    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    const/4 v1, -0x1

    .line 444
    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    .line 446
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 447
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 448
    iget-object p2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 451
    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->savePrevious:Z

    .line 452
    iget-object p2, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 453
    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 454
    iput-boolean p2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->savePrevious:Z

    .line 459
    :cond_1
    iput p3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    .line 463
    iget-object p2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget v0, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    iget v1, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    mul-int v0, v0, v1

    invoke-interface {p2, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object p2

    iput-object p2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    .line 464
    iget-object p2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget v0, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    div-int/2addr v0, p3

    iget v1, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    div-int/2addr v1, p3

    mul-int v0, v0, v1

    .line 465
    invoke-interface {p2, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainScratch:[I

    .line 466
    iget p2, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    .line 467
    iget p1, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    div-int/2addr p1, p3

    iput p1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 437
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized setData(Lcom/felipecsl/gifimageview/library/GifHeader;[B)V
    .locals 0

    monitor-enter p0

    .line 428
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
