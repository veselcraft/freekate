.class public final Lcom/yandex/metrica/impl/ob/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/b$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b;->a:[B

    .line 58
    iput p2, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    .line 59
    add-int v0, p2, p3

    iput v0, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    .line 60
    return-void
.end method

.method public static a([BII)Lcom/yandex/metrica/impl/ob/b;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/yandex/metrica/impl/ob/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/b;-><init>([BII)V

    return-object v0
.end method

.method public static b(ILcom/yandex/metrica/impl/ob/d;)I
    .locals 3

    .prologue
    .line 443
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d;->b()I

    move-result v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 425
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(I[B)I
    .locals 3

    .prologue
    .line 452
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    array-length v1, p1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 607
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 608
    array-length v1, v0

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    .line 611
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(IJ)I
    .locals 3

    .prologue
    .line 373
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/b;->d(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 357
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static d(II)I
    .locals 2

    .prologue
    .line 389
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v1

    if-ltz p1, :cond_0

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static d(IJ)I
    .locals 3

    .prologue
    .line 381
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/b;->d(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(J)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 814
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 823
    :goto_0
    return v0

    .line 815
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 816
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 817
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 818
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 819
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 820
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 821
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 822
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 823
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static e(I)I
    .locals 1

    .prologue
    .line 416
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static e(II)I
    .locals 2

    .prologue
    .line 460
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(II)I
    .locals 2

    .prologue
    .line 495
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v0

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->j(I)I

    move-result v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(I)I
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/f;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v0

    return v0
.end method

.method public static i(I)I
    .locals 1

    .prologue
    .line 792
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    .line 793
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 794
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 795
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 796
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static j(I)I
    .locals 2

    .prologue
    .line 862
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 695
    iget v0, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    iget v0, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    if-ne v0, v1, :cond_0

    .line 730
    new-instance v0, Lcom/yandex/metrica/impl/ob/b$a;

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    iget v2, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b$a;-><init>(II)V

    throw v0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b;->a:[B

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    aput-byte p1, v0, v1

    .line 734
    return-void
.end method

.method public a(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->e(J)V

    .line 247
    return-void
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    if-ltz p1, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->c(J)V

    goto :goto_0
.end method

.method public a(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 90
    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/b;->a(D)V

    .line 91
    return-void
.end method

.method public a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a(I)V

    .line 119
    return-void
.end method

.method public a(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/b;->a(J)V

    .line 105
    return-void
.end method

.method public a(ILcom/yandex/metrica/impl/ob/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 161
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a(Lcom/yandex/metrica/impl/ob/d;)V

    .line 162
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a(Z)V

    .line 140
    return-void
.end method

.method public a(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a([B)V

    .line 169
    return-void
.end method

.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/b;->c(J)V

    .line 257
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 307
    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 308
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 295
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 296
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->b([B)V

    .line 297
    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 287
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->b([B)V

    .line 314
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/b;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 319
    return-void
.end method

.method public b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 175
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->b(I)V

    .line 176
    return-void
.end method

.method public b(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/b;->b(J)V

    .line 112
    return-void
.end method

.method public b(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/b;->c(J)V

    .line 262
    return-void
.end method

.method public b([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b([BII)V

    .line 744
    return-void
.end method

.method public b([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    iget v0, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 751
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b;->a:[B

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    iget v0, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    return-void

    .line 755
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/b$a;

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    iget v2, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b$a;-><init>(II)V

    throw v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->j(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 342
    return-void
.end method

.method public c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 206
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->c(I)V

    .line 207
    return-void
.end method

.method public c(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 803
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 804
    return-void

    .line 806
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 807
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public e(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 839
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 840
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 841
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 842
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 843
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 844
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 845
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 846
    return-void
.end method

.method public f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->a(B)V

    .line 739
    return-void
.end method

.method public g(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/f;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 763
    return-void
.end method

.method public h(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 778
    return-void

    .line 780
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    .line 781
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
