.class Lcom/inmobi/ads/ae;
.super Ljava/lang/Object;
.source "NativeStrandPositioningData.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:[I

.field private final c:[I

.field private d:I

.field private final e:[I

.field private final f:[I

.field private g:I

.field private final h:[Lcom/inmobi/ads/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ae;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([I)V
    .locals 3

    .prologue
    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/inmobi/ads/ae;->b:[I

    .line 135
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/inmobi/ads/ae;->c:[I

    .line 136
    iput v2, p0, Lcom/inmobi/ads/ae;->d:I

    .line 139
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/inmobi/ads/ae;->e:[I

    .line 143
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/inmobi/ads/ae;->f:[I

    .line 144
    iput v2, p0, Lcom/inmobi/ads/ae;->g:I

    .line 146
    new-array v0, v1, [Lcom/inmobi/ads/q;

    iput-object v0, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    .line 150
    array-length v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/ae;->d:I

    .line 151
    iget-object v0, p0, Lcom/inmobi/ads/ae;->c:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v0, p0, Lcom/inmobi/ads/ae;->b:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-void
.end method

.method private static a([III)I
    .locals 3

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 412
    if-gez v0, :cond_0

    .line 413
    xor-int/lit8 v0, v0, -0x1

    .line 421
    :goto_0
    return v0

    .line 416
    :cond_0
    aget v1, p0, v0

    .line 417
    :goto_1
    if-ltz v0, :cond_1

    aget v2, p0, v0

    if-ne v2, v1, :cond_1

    .line 418
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 421
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)Lcom/inmobi/ads/ae;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->getFixedPositions()Ljava/util/List;

    move-result-object v3

    .line 158
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->getRepeatingInterval()I

    move-result v4

    .line 159
    const v0, 0x7fffffff

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->getRepeatingInterval()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 160
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 161
    :goto_0
    new-array v5, v1, [I

    .line 167
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v0, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    .line 169
    add-int/lit8 v3, v2, 0x1

    aput v0, v5, v2

    move v2, v3

    .line 170
    goto :goto_1

    .line 160
    :cond_0
    const/16 v0, 0xc8

    move v1, v0

    goto :goto_0

    .line 173
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_2

    .line 174
    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 175
    add-int/lit8 v3, v2, 0x1

    aput v0, v5, v2

    move v2, v3

    goto :goto_2

    .line 178
    :cond_2
    new-instance v0, Lcom/inmobi/ads/ae;

    invoke-direct {v0, v5}, Lcom/inmobi/ads/ae;-><init>([I)V

    return-object v0
.end method

.method private static b([III)I
    .locals 3

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 464
    if-gez v0, :cond_1

    .line 465
    xor-int/lit8 v0, v0, -0x1

    .line 472
    :cond_0
    return v0

    .line 468
    :cond_1
    aget v1, p0, v0

    .line 469
    :goto_0
    if-ge v0, p1, :cond_0

    aget v2, p0, v0

    if-ne v2, v1, :cond_0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static c()Lcom/inmobi/ads/ae;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lcom/inmobi/ads/ae;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/inmobi/ads/ae;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method a(II)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 300
    iget v0, p0, Lcom/inmobi/ads/ae;->g:I

    new-array v3, v0, [I

    .line 301
    iget v0, p0, Lcom/inmobi/ads/ae;->g:I

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 306
    :goto_0
    iget v5, p0, Lcom/inmobi/ads/ae;->g:I

    if-ge v0, v5, :cond_2

    .line 307
    iget-object v5, p0, Lcom/inmobi/ads/ae;->e:[I

    aget v5, v5, v0

    .line 308
    iget-object v6, p0, Lcom/inmobi/ads/ae;->f:[I

    aget v6, v6, v0

    .line 309
    if-gt p1, v6, :cond_1

    if-ge v6, p2, :cond_1

    .line 312
    aput v5, v3, v2

    .line 313
    sub-int v5, v6, v2

    aput v5, v4, v2

    .line 316
    iget-object v5, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/inmobi/ads/q;->c()V

    .line 317
    iget-object v5, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 318
    add-int/lit8 v2, v2, 0x1

    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    if-lez v2, :cond_0

    .line 321
    sub-int v7, v0, v2

    .line 322
    iget-object v8, p0, Lcom/inmobi/ads/ae;->e:[I

    aput v5, v8, v7

    .line 323
    iget-object v5, p0, Lcom/inmobi/ads/ae;->f:[I

    sub-int/2addr v6, v2

    aput v6, v5, v7

    .line 324
    iget-object v5, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    iget-object v6, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    aget-object v6, v6, v0

    aput-object v6, v5, v7

    goto :goto_1

    .line 329
    :cond_2
    if-nez v2, :cond_3

    .line 353
    :goto_2
    return v1

    .line 336
    :cond_3
    aget v0, v4, v1

    .line 337
    iget-object v5, p0, Lcom/inmobi/ads/ae;->c:[I

    iget v6, p0, Lcom/inmobi/ads/ae;->d:I

    invoke-static {v5, v6, v0}, Lcom/inmobi/ads/ae;->a([III)I

    move-result v5

    .line 339
    iget v0, p0, Lcom/inmobi/ads/ae;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, v5, :cond_4

    .line 340
    iget-object v6, p0, Lcom/inmobi/ads/ae;->b:[I

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/inmobi/ads/ae;->b:[I

    aget v8, v8, v0

    aput v8, v6, v7

    .line 341
    iget-object v6, p0, Lcom/inmobi/ads/ae;->c:[I

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/inmobi/ads/ae;->c:[I

    aget v8, v8, v0

    sub-int/2addr v8, v2

    aput v8, v6, v7

    .line 339
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 345
    :cond_4
    :goto_4
    if-ge v1, v2, :cond_5

    .line 346
    iget-object v0, p0, Lcom/inmobi/ads/ae;->b:[I

    add-int v6, v5, v1

    aget v7, v3, v1

    aput v7, v0, v6

    .line 347
    iget-object v0, p0, Lcom/inmobi/ads/ae;->c:[I

    add-int v6, v5, v1

    aget v7, v4, v1

    aput v7, v0, v6

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 351
    :cond_5
    iget v0, p0, Lcom/inmobi/ads/ae;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/inmobi/ads/ae;->d:I

    .line 352
    iget v0, p0, Lcom/inmobi/ads/ae;->g:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/inmobi/ads/ae;->g:I

    move v1, v2

    .line 353
    goto :goto_2
.end method

.method a(I)Lcom/inmobi/ads/q;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/inmobi/ads/ae;->f:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/inmobi/ads/ae;->g:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 188
    if-gez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method a()V
    .locals 3

    .prologue
    .line 274
    iget v0, p0, Lcom/inmobi/ads/ae;->g:I

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inmobi/ads/ae;->f:[I

    iget v2, p0, Lcom/inmobi/ads/ae;->g:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ae;->a(II)I

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/q;I)V
    .locals 7

    .prologue
    .line 220
    iget-object v0, p0, Lcom/inmobi/ads/ae;->c:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    invoke-static {v0, v1, p2}, Lcom/inmobi/ads/ae;->a([III)I

    move-result v0

    .line 222
    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:[I

    aget v1, v1, v0

    if-eq v1, p2, :cond_1

    .line 259
    :cond_0
    return-void

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/ae;->b:[I

    aget v1, v1, v0

    .line 229
    iget-object v2, p0, Lcom/inmobi/ads/ae;->e:[I

    iget v3, p0, Lcom/inmobi/ads/ae;->g:I

    invoke-static {v2, v3, v1}, Lcom/inmobi/ads/ae;->b([III)I

    move-result v2

    .line 231
    iget v3, p0, Lcom/inmobi/ads/ae;->g:I

    if-ge v2, v3, :cond_2

    .line 232
    iget v3, p0, Lcom/inmobi/ads/ae;->g:I

    sub-int/2addr v3, v2

    .line 233
    iget-object v4, p0, Lcom/inmobi/ads/ae;->e:[I

    iget-object v5, p0, Lcom/inmobi/ads/ae;->e:[I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v4, p0, Lcom/inmobi/ads/ae;->f:[I

    iget-object v5, p0, Lcom/inmobi/ads/ae;->f:[I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v4, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    iget-object v5, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/inmobi/ads/ae;->e:[I

    aput v1, v3, v2

    .line 240
    iget-object v1, p0, Lcom/inmobi/ads/ae;->f:[I

    aput p2, v1, v2

    .line 241
    iget-object v1, p0, Lcom/inmobi/ads/ae;->h:[Lcom/inmobi/ads/q;

    aput-object p1, v1, v2

    .line 242
    iget v1, p0, Lcom/inmobi/ads/ae;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inmobi/ads/ae;->g:I

    .line 245
    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 246
    iget-object v3, p0, Lcom/inmobi/ads/ae;->c:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/inmobi/ads/ae;->c:[I

    invoke-static {v3, v4, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v3, p0, Lcom/inmobi/ads/ae;->b:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/inmobi/ads/ae;->b:[I

    invoke-static {v3, v4, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/inmobi/ads/ae;->d:I

    .line 253
    :goto_0
    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    if-ge v0, v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:[I

    aget v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_3
    add-int/lit8 v0, v2, 0x1

    :goto_1
    iget v1, p0, Lcom/inmobi/ads/ae;->g:I

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/inmobi/ads/ae;->f:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method b(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:[I

    iget v2, p0, Lcom/inmobi/ads/ae;->d:I

    invoke-static {v1, v0, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v1

    .line 199
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method b()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    iget v0, p0, Lcom/inmobi/ads/ae;->g:I

    new-array v0, v0, [I

    .line 288
    iget-object v1, p0, Lcom/inmobi/ads/ae;->f:[I

    iget v2, p0, Lcom/inmobi/ads/ae;->g:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    return-object v0
.end method

.method c(I)I
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/inmobi/ads/ae;->c:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    invoke-static {v0, v1, p1}, Lcom/inmobi/ads/ae;->b([III)I

    move-result v0

    .line 209
    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    if-ne v0, v1, :cond_0

    .line 210
    const/4 v0, -0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method d(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Lcom/inmobi/ads/ae;->f:[I

    iget v2, p0, Lcom/inmobi/ads/ae;->g:I

    invoke-static {v1, v0, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v1

    .line 266
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method e(I)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/inmobi/ads/ae;->b:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    invoke-static {v0, v1, p1}, Lcom/inmobi/ads/ae;->a([III)I

    move-result v0

    .line 360
    :goto_0
    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    if-ge v0, v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/inmobi/ads/ae;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 362
    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ae;->e:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->g:I

    invoke-static {v0, v1, p1}, Lcom/inmobi/ads/ae;->a([III)I

    move-result v0

    .line 368
    :goto_1
    iget v1, p0, Lcom/inmobi/ads/ae;->g:I

    if-ge v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/inmobi/ads/ae;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 370
    iget-object v1, p0, Lcom/inmobi/ads/ae;->f:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    return-void
.end method

.method f(I)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/inmobi/ads/ae;->b:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    invoke-static {v0, v1, p1}, Lcom/inmobi/ads/ae;->b([III)I

    move-result v0

    .line 383
    :goto_0
    iget v1, p0, Lcom/inmobi/ads/ae;->d:I

    if-ge v0, v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/inmobi/ads/ae;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 385
    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ae;->e:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->g:I

    invoke-static {v0, v1, p1}, Lcom/inmobi/ads/ae;->b([III)I

    move-result v0

    .line 391
    :goto_1
    iget v1, p0, Lcom/inmobi/ads/ae;->g:I

    if-ge v0, v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/inmobi/ads/ae;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 393
    iget-object v1, p0, Lcom/inmobi/ads/ae;->f:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_1
    return-void
.end method

.method g(I)I
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/inmobi/ads/ae;->f:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/inmobi/ads/ae;->g:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 428
    if-gez v0, :cond_0

    .line 429
    xor-int/lit8 v0, v0, -0x1

    sub-int v0, p1, v0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method h(I)I
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/inmobi/ads/ae;->e:[I

    iget v1, p0, Lcom/inmobi/ads/ae;->g:I

    invoke-static {v0, v1, p1}, Lcom/inmobi/ads/ae;->b([III)I

    move-result v0

    .line 439
    add-int/2addr v0, p1

    return v0
.end method

.method i(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 443
    if-nez p1, :cond_1

    .line 444
    const/4 v0, 0x0

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/ae;->g(I)I

    move-result v1

    .line 449
    if-eq v1, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method j(I)I
    .locals 1

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ae;->h(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
