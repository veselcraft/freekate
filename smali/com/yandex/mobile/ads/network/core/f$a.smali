.class Lcom/yandex/mobile/ads/network/core/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/network/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/c$a;)V
    .locals 2

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/f$a;->b:Ljava/lang/String;

    .line 371
    iget-object v0, p2, Lcom/yandex/mobile/ads/network/core/c$a;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->a:J

    .line 372
    iget-object v0, p2, Lcom/yandex/mobile/ads/network/core/c$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->c:Ljava/lang/String;

    .line 373
    iget-wide v0, p2, Lcom/yandex/mobile/ads/network/core/c$a;->c:J

    iput-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->d:J

    .line 374
    iget-wide v0, p2, Lcom/yandex/mobile/ads/network/core/c$a;->d:J

    iput-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->e:J

    .line 375
    iget-wide v0, p2, Lcom/yandex/mobile/ads/network/core/c$a;->e:J

    iput-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->f:J

    .line 376
    iget-wide v0, p2, Lcom/yandex/mobile/ads/network/core/c$a;->f:J

    iput-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->g:J

    .line 377
    iget-object v0, p2, Lcom/yandex/mobile/ads/network/core/c$a;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->h:Ljava/util/Map;

    .line 378
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/yandex/mobile/ads/network/core/f$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcom/yandex/mobile/ads/network/core/f$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/network/core/f$a;-><init>()V

    .line 387
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/InputStream;)I

    move-result v1

    .line 388
    const v2, 0x20150306

    if-eq v1, v2, :cond_0

    .line 390
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 392
    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/core/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/network/core/f$a;->b:Ljava/lang/String;

    .line 393
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/core/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/network/core/f$a;->c:Ljava/lang/String;

    .line 394
    iget-object v1, v0, Lcom/yandex/mobile/ads/network/core/f$a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yandex/mobile/ads/network/core/f$a;->c:Ljava/lang/String;

    .line 397
    :cond_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/mobile/ads/network/core/f$a;->d:J

    .line 398
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/mobile/ads/network/core/f$a;->e:J

    .line 399
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/mobile/ads/network/core/f$a;->f:J

    .line 400
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/mobile/ads/network/core/f$a;->g:J

    .line 401
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/core/f;->d(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/network/core/f$a;->h:Ljava/util/Map;

    .line 403
    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/yandex/mobile/ads/network/core/c$a;
    .locals 4

    .prologue
    .line 410
    new-instance v0, Lcom/yandex/mobile/ads/network/core/c$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/network/core/c$a;-><init>()V

    .line 411
    iput-object p1, v0, Lcom/yandex/mobile/ads/network/core/c$a;->a:[B

    .line 412
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/f$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/mobile/ads/network/core/c$a;->b:Ljava/lang/String;

    .line 413
    iget-wide v2, p0, Lcom/yandex/mobile/ads/network/core/f$a;->d:J

    iput-wide v2, v0, Lcom/yandex/mobile/ads/network/core/c$a;->c:J

    .line 414
    iget-wide v2, p0, Lcom/yandex/mobile/ads/network/core/f$a;->e:J

    iput-wide v2, v0, Lcom/yandex/mobile/ads/network/core/c$a;->d:J

    .line 415
    iget-wide v2, p0, Lcom/yandex/mobile/ads/network/core/f$a;->f:J

    iput-wide v2, v0, Lcom/yandex/mobile/ads/network/core/c$a;->e:J

    .line 416
    iget-wide v2, p0, Lcom/yandex/mobile/ads/network/core/f$a;->g:J

    iput-wide v2, v0, Lcom/yandex/mobile/ads/network/core/c$a;->f:J

    .line 417
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/f$a;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/yandex/mobile/ads/network/core/c$a;->g:Ljava/util/Map;

    .line 418
    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 427
    const v0, 0x20150306

    :try_start_0
    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;I)V

    .line 428
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 430
    iget-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->d:J

    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;J)V

    .line 431
    iget-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->e:J

    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;J)V

    .line 432
    iget-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->f:J

    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;J)V

    .line 433
    iget-wide v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->g:J

    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;J)V

    .line 434
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 437
    :catch_0
    move-exception v0

    .line 438
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/network/core/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 439
    :goto_2
    return v0

    .line 429
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/f$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 434
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/network/core/f;->a(Ljava/io/OutputStream;I)V

    .line 435
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 436
    goto :goto_2
.end method
