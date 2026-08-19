.class public Lcom/felipecsl/gifimageview/library/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcom/felipecsl/gifimageview/library/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 43
    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private err()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private read()I
    .locals 2

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 404
    :catch_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readBitmap()V
    .locals 8

    .line 220
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->ix:I

    .line 221
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->iy:I

    .line 222
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    .line 223
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->ih:I

    .line 225
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    .line 228
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 232
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v5, v5, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v5, Lcom/felipecsl/gifimageview/library/GifFrame;->interlace:Z

    if-eqz v1, :cond_2

    .line 235
    invoke-direct {p0, v4}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/felipecsl/gifimageview/library/GifFrame;->lct:[I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 238
    iput-object v0, v5, Lcom/felipecsl/gifimageview/library/GifFrame;->lct:[I

    .line 242
    :goto_1
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->bufferFrameStart:I

    .line 245
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skipImageData()V

    .line 247
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    .line 253
    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBlock()I
    .locals 6

    .line 374
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 379
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    if-ge v1, v0, :cond_1

    sub-int/2addr v0, v1

    .line 381
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    .line 386
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v2, 0x1

    iput v2, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    :cond_1
    return v1
.end method

.method private readColorTable(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    .line 321
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 332
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 333
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 334
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 335
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    .line 338
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Format Error Reading Color Table"

    .line 339
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v0, 0x1

    iput v0, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    :cond_1
    return-object v1
.end method

.method private readContents()V
    .locals 1

    const v0, 0x7fffffff

    .line 114
    invoke-direct {p0, v0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readContents(I)V

    return-void
.end method

.method private readContents(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_a

    .line 123
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v2, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-gt v2, p1, :cond_a

    .line 124
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    .line 182
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iput v4, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    if-nez v3, :cond_2

    .line 134
    new-instance v3, Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {v3}, Lcom/felipecsl/gifimageview/library/GifFrame;-><init>()V

    iput-object v3, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readBitmap()V

    goto :goto_0

    .line 140
    :cond_3
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    .line 172
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    goto :goto_0

    .line 150
    :cond_4
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readBlock()I

    const-string v2, ""

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string v3, "NETSCAPE2.0"

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 156
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readNetscapeExt()V

    goto :goto_0

    .line 159
    :cond_6
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    goto :goto_0

    .line 164
    :cond_7
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    goto/16 :goto_0

    .line 145
    :cond_8
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    new-instance v3, Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {v3}, Lcom/felipecsl/gifimageview/library/GifFrame;-><init>()V

    iput-object v3, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 146
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readGraphicControlExt()V

    goto/16 :goto_0

    .line 168
    :cond_9
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private readGraphicControlExt()V
    .locals 5

    .line 192
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    .line 194
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v1, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 199
    iput v4, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    :cond_0
    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 201
    :goto_0
    iput-boolean v4, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->transparency:Z

    .line 203
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    const/16 v0, 0xa

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v2, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v2, Lcom/felipecsl/gifimageview/library/GifFrame;->delay:I

    .line 210
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    iput v0, v2, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    .line 212
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    return-void
.end method

.method private readHeader()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "GIF"

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    return-void

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readLSD()V

    .line 285
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-boolean v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->gctFlag:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->gctSize:I

    invoke-direct {p0, v1}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->gct:[I

    .line 287
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->gct:[I

    iget v2, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->bgIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I

    :cond_2
    return-void
.end method

.method private readLSD()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    .line 297
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    .line 299
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->gctFlag:Z

    const/4 v2, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v2, v0

    .line 305
    iput v0, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->gctSize:I

    .line 307
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    iput v0, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->bgIndex:I

    .line 309
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->pixelAspect:I

    return-void
.end method

.method private readNetscapeExt()V
    .locals 3

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readBlock()I

    .line 262
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 264
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 265
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 266
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->loopCount:I

    .line 268
    :cond_1
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 74
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 75
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {v0}, Lcom/felipecsl/gifimageview/library/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    .line 76
    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private skip()V
    .locals 3

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private skipImageData()V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    .line 354
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    return-void
.end method


# virtual methods
.method public parseHeader()Lcom/felipecsl/gifimageview/library/GifHeader;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    return-object v0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readHeader()V

    .line 88
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readContents()V

    .line 90
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    .line 91
    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    return-object v0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)Lcom/felipecsl/gifimageview/library/GifHeaderParser;
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->reset()V

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    iget-object p1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setData([B)Lcom/felipecsl/gifimageview/library/GifHeaderParser;
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->setData(Ljava/nio/ByteBuffer;)Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 62
    iget-object p1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v0, 0x2

    iput v0, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    :goto_0
    return-object p0
.end method
