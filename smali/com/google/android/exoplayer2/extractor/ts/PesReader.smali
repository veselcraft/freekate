.class public final Lcom/google/android/exoplayer2/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 63
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3

    .line 173
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 177
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 179
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 181
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseHeader()Z
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const-string v2, "PesReader"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected start code prefix: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    return v1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 198
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 199
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 200
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 201
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    .line 202
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    .line 205
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 206
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_1

    .line 209
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_0

    :cond_1
    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    .line 211
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-gez v0, :cond_2

    const/16 v1, 0x2f

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Found negative packet payload size: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    :cond_2
    :goto_0
    return v3
.end method

.method private parseHeaderExtension()V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "timestampAdjuster"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 224
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 225
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 228
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 229
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 230
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 231
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 232
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 233
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    .line 234
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 235
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 236
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 237
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 238
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 239
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 240
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 246
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 247
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    const-string v5, "PesReader"

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_0

    const/16 v6, 0x3b

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " more bytes"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    const-string v0, "Unexpected start indicator reading extended header"

    .line 95
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_3
    :goto_0
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    .line 114
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_d

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_c

    const/4 v5, 0x0

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    .line 136
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 137
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-ne v6, v1, :cond_5

    goto :goto_2

    :cond_5
    sub-int v5, v0, v6

    :goto_2
    if-lez v5, :cond_6

    sub-int/2addr v0, v5

    .line 140
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 142
    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v5, p1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 143
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v5, v1, :cond_4

    sub-int/2addr v5, v0

    .line 144
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-nez v5, :cond_4

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 147
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 152
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    const/16 v0, 0xa

    .line 125
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 127
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v6, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 128
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 130
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v0, :cond_9

    const/4 v5, 0x4

    :cond_9
    or-int/2addr p2, v5

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v0, v5, v6, p2}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 132
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 120
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/16 v6, 0x9

    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v5, 0x2

    :cond_b
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_1

    .line 117
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 71
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 79
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 80
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
