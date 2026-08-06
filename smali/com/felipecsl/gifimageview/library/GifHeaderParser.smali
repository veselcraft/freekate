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

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private err()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private read()I
    .locals 4

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 406
    :goto_0
    return v0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v3, 0x1

    iput v3, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    goto :goto_0
.end method

.method private readBitmap()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v5, v5, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v6

    iput v6, v5, Lcom/felipecsl/gifimageview/library/GifFrame;->ix:I

    .line 221
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v5, v5, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v6

    iput v6, v5, Lcom/felipecsl/gifimageview/library/GifFrame;->iy:I

    .line 222
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v5, v5, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v6

    iput v6, v5, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    .line 223
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v5, v5, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v6

    iput v6, v5, Lcom/felipecsl/gifimageview/library/GifFrame;->ih:I

    .line 225
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v2

    .line 227
    .local v2, "packed":I
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_0

    move v0, v3

    .line 228
    .local v0, "lctFlag":Z
    :goto_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    and-int/lit8 v5, v2, 0x7

    add-int/lit8 v5, v5, 0x1

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v1, v6

    .line 232
    .local v1, "lctSize":I
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v5, v5, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    and-int/lit8 v6, v2, 0x40

    if-eqz v6, :cond_1

    :goto_1
    iput-boolean v3, v5, Lcom/felipecsl/gifimageview/library/GifFrame;->interlace:Z

    .line 233
    if-eqz v0, :cond_2

    .line 235
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0, v1}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readColorTable(I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/felipecsl/gifimageview/library/GifFrame;->lct:[I

    .line 242
    :goto_2
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, v3, Lcom/felipecsl/gifimageview/library/GifFrame;->bufferFrameStart:I

    .line 245
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skipImageData()V

    .line 247
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    :goto_3
    return-void

    .end local v0    # "lctFlag":Z
    .end local v1    # "lctSize":I
    :cond_0
    move v0, v4

    .line 227
    goto :goto_0

    .restart local v0    # "lctFlag":Z
    .restart local v1    # "lctSize":I
    :cond_1
    move v3, v4

    .line 232
    goto :goto_1

    .line 238
    :cond_2
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/felipecsl/gifimageview/library/GifFrame;->lct:[I

    goto :goto_2

    .line 251
    :cond_3
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v4, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    .line 253
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v4, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v3

    iput v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, "n":I
    iget v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    if-lez v3, :cond_1

    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 380
    iget v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    sub-int v0, v3, v2

    .line 381
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    invoke-virtual {v3, v4, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    add-int/2addr v2, v0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "GifHeaderParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    const-string v3, "GifHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " blockSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v4, 0x1

    iput v4, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    .line 393
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return v2
.end method

.method private readColorTable(I)[I
    .locals 13
    .param p1, "ncolors"    # I

    .prologue
    .line 319
    mul-int/lit8 v8, p1, 0x3

    .line 320
    .local v8, "nbytes":I
    const/4 v10, 0x0

    .line 321
    .local v10, "tab":[I
    new-array v1, v8, [B

    .line 324
    .local v1, "c":[B
    :try_start_0
    iget-object v11, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 328
    const/16 v11, 0x100

    new-array v10, v11, [I

    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    move v5, v4

    .line 331
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 332
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v11, v1, v7

    and-int/lit16 v9, v11, 0xff

    .line 333
    .local v9, "r":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v11, v1, v6

    and-int/lit16 v3, v11, 0xff

    .line 334
    .local v3, "g":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v11, v1, v7

    and-int/lit16 v0, v11, 0xff

    .line 335
    .local v0, "b":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/high16 v11, -0x1000000

    shl-int/lit8 v12, v9, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v3, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v0

    aput v11, v10, v5
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v5, v4

    .line 336
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 337
    .end local v0    # "b":I
    .end local v3    # "g":I
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v9    # "r":I
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v11, "GifHeaderParser"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 339
    const-string v11, "GifHeaderParser"

    const-string v12, "Format Error Reading Color Table"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_0
    iget-object v11, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v12, 0x1

    iput v12, v11, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    .line 344
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :cond_1
    return-object v10
.end method

.method private readContents()V
    .locals 1

    .prologue
    .line 114
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readContents(I)V

    .line 115
    return-void
.end method

.method private readContents(I)V
    .locals 6
    .param p1, "maxFrames"    # I

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v4, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-gt v4, p1, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v1

    .line 125
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 182
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v5, 0x1

    iput v5, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    goto :goto_0

    .line 133
    :sswitch_0
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v4, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    if-nez v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    new-instance v5, Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {v5}, Lcom/felipecsl/gifimageview/library/GifFrame;-><init>()V

    iput-object v5, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readBitmap()V

    goto :goto_0

    .line 140
    :sswitch_1
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v1

    .line 141
    sparse-switch v1, :sswitch_data_1

    .line 172
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    goto :goto_0

    .line 145
    :sswitch_2
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    new-instance v5, Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {v5}, Lcom/felipecsl/gifimageview/library/GifFrame;-><init>()V

    iput-object v5, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 146
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readGraphicControlExt()V

    goto :goto_0

    .line 150
    :sswitch_3
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readBlock()I

    .line 151
    const-string v0, ""

    .line 152
    .local v0, "app":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_1
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readNetscapeExt()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    goto :goto_0

    .line 164
    .end local v0    # "app":Ljava/lang/String;
    .end local v3    # "i":I
    :sswitch_4
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    goto :goto_0

    .line 168
    :sswitch_5
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    goto :goto_0

    .line 177
    :sswitch_6
    const/4 v2, 0x1

    .line 178
    goto/16 :goto_0

    .line 185
    .end local v1    # "code":I
    :cond_3
    return-void

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 141
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 192
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    .line 194
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v1

    .line 196
    .local v1, "packed":I
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    and-int/lit8 v4, v1, 0x1c

    shr-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    .line 197
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    iget v3, v3, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    if-nez v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    iput v2, v3, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_2

    :goto_0
    iput-boolean v2, v3, Lcom/felipecsl/gifimageview/library/GifFrame;->transparency:Z

    .line 203
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v0

    .line 205
    .local v0, "delayInHundredthsOfASecond":I
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 206
    const/16 v0, 0xa

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v2, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    mul-int/lit8 v3, v0, 0xa

    iput v3, v2, Lcom/felipecsl/gifimageview/library/GifFrame;->delay:I

    .line 210
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v2, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v3

    iput v3, v2, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    .line 212
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    .line 213
    return-void

    .line 201
    .end local v0    # "delayInHundredthsOfASecond":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readHeader()V
    .locals 5

    .prologue
    .line 276
    const-string v1, ""

    .line 277
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v3, 0x1

    iput v3, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    .line 289
    :cond_1
    :goto_1
    return-void

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readLSD()V

    .line 285
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-boolean v2, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->gctSize:I

    invoke-direct {p0, v3}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readColorTable(I)[I

    move-result-object v3

    iput-object v3, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->gct:[I

    .line 287
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v3, v3, Lcom/felipecsl/gifimageview/library/GifHeader;->gct:[I

    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v4, v4, Lcom/felipecsl/gifimageview/library/GifHeader;->bgIndex:I

    aget v3, v3, v4

    iput v3, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I

    goto :goto_1
.end method

.method private readLSD()V
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v2

    iput v2, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    .line 297
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readShort()I

    move-result v2

    iput v2, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    .line 299
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    .line 301
    .local v0, "packed":I
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->gctFlag:Z

    .line 305
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v2, 0x2

    and-int/lit8 v3, v0, 0x7

    shl-int/2addr v2, v3

    iput v2, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->gctSize:I

    .line 307
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v2

    iput v2, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->bgIndex:I

    .line 309
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v2

    iput v2, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->pixelAspect:I

    .line 310
    return-void

    .line 301
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readBlock()I

    .line 262
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 264
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 265
    .local v0, "b1":I
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 266
    .local v1, "b2":I
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v3, v0

    iput v3, v2, Lcom/felipecsl/gifimageview/library/GifHeader;->loopCount:I

    .line 268
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 74
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->block:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 75
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {v0}, Lcom/felipecsl/gifimageview/library/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    .line 76
    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->blockSize:I

    .line 77
    return-void
.end method

.method private skip()V
    .locals 3

    .prologue
    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    move-result v0

    .line 364
    .local v0, "blockSize":I
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 365
    if-gtz v0, :cond_0

    .line 366
    return-void
.end method

.method private skipImageData()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->read()I

    .line 354
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->skip()V

    .line 355
    return-void
.end method


# virtual methods
.method public parseHeader()Lcom/felipecsl/gifimageview/library/GifHeader;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    .line 95
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readHeader()V

    .line 88
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->readContents()V

    .line 90
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-gez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    goto :goto_0
.end method

.method public setData(Ljava/nio/ByteBuffer;)Lcom/felipecsl/gifimageview/library/GifHeaderParser;
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->reset()V

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    return-object p0
.end method

.method public setData([B)Lcom/felipecsl/gifimageview/library/GifHeaderParser;
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->setData(Ljava/nio/ByteBuffer;)Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    .line 64
    :goto_0
    return-object p0

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v1, 0x2

    iput v1, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    goto :goto_0
.end method
