.class public Lcom/yandex/mobile/ads/network/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/network/core/m;


# static fields
.field protected static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field protected final b:Lcom/yandex/mobile/ads/network/core/i;

.field protected final c:Lcom/yandex/mobile/ads/network/core/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/yandex/mobile/ads/network/core/v;->b:Z

    sput-boolean v0, Lcom/yandex/mobile/ads/network/core/a;->a:Z

    .line 53
    const/16 v0, 0xbb8

    sput v0, Lcom/yandex/mobile/ads/network/core/a;->d:I

    .line 55
    const/16 v0, 0x1000

    sput v0, Lcom/yandex/mobile/ads/network/core/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/i;)V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/yandex/mobile/ads/network/core/b;

    sget v1, Lcom/yandex/mobile/ads/network/core/a;->e:I

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/network/core/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/network/core/a;-><init>(Lcom/yandex/mobile/ads/network/core/i;Lcom/yandex/mobile/ads/network/core/b;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/i;Lcom/yandex/mobile/ads/network/core/b;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/a;->b:Lcom/yandex/mobile/ads/network/core/i;

    .line 76
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/a;->c:Lcom/yandex/mobile/ads/network/core/b;

    .line 77
    return-void
.end method

.method protected static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 265
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 266
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;",
            "Lcom/yandex/mobile/ads/network/core/error/h;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/h;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->w()Lcom/yandex/mobile/ads/network/core/u;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->v()I

    move-result v1

    .line 200
    :try_start_0
    invoke-interface {v0, p2}, Lcom/yandex/mobile/ads/network/core/u;->a(Lcom/yandex/mobile/ads/network/core/error/h;)V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/network/core/error/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    throw v0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/mobile/ads/network/core/error/f;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 232
    new-instance v2, Lcom/yandex/mobile/ads/network/core/p;

    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/a;->c:Lcom/yandex/mobile/ads/network/core/b;

    .line 233
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/yandex/mobile/ads/network/core/p;-><init>(Lcom/yandex/mobile/ads/network/core/b;I)V

    .line 234
    const/4 v1, 0x0

    .line 236
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 237
    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/yandex/mobile/ads/network/core/error/f;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/network/core/error/f;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :catchall_0
    move-exception v0

    .line 249
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/network/core/a;->c:Lcom/yandex/mobile/ads/network/core/b;

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/network/core/b;->a([B)V

    .line 256
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/network/core/p;->close()V

    throw v0

    .line 240
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/yandex/mobile/ads/network/core/a;->c:Lcom/yandex/mobile/ads/network/core/b;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/network/core/b;->a(I)[B

    move-result-object v1

    .line 242
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 243
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/yandex/mobile/ads/network/core/p;->write([BII)V

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/network/core/p;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 249
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 255
    :goto_2
    iget-object v3, p0, Lcom/yandex/mobile/ads/network/core/a;->c:Lcom/yandex/mobile/ads/network/core/b;

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/network/core/b;->a([B)V

    .line 256
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/network/core/p;->close()V

    return-object v0

    .line 253
    :catch_0
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/core/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/core/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/q;)Lcom/yandex/mobile/ads/network/core/o;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;)",
            "Lcom/yandex/mobile/ads/network/core/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/h;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 83
    :goto_0
    const/4 v3, 0x0

    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 88
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->h()Lcom/yandex/mobile/ads/network/core/c$a;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/yandex/mobile/ads/network/core/c$a;->b:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, "If-None-Match"

    iget-object v8, v6, Lcom/yandex/mobile/ads/network/core/c$a;->b:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v8, v6, Lcom/yandex/mobile/ads/network/core/c$a;->d:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v6, Lcom/yandex/mobile/ads/network/core/c$a;->d:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v6, "If-Modified-Since"

    invoke-static {v7}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    iget-object v6, p0, Lcom/yandex/mobile/ads/network/core/a;->b:Lcom/yandex/mobile/ads/network/core/i;

    invoke-interface {v6, p1, v0}, Lcom/yandex/mobile/ads/network/core/i;->a(Lcom/yandex/mobile/ads/network/core/q;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 91
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 92
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 94
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/a;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v1

    .line 96
    const/16 v0, 0x130

    if-ne v7, v0, :cond_3

    .line 98
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->h()Lcom/yandex/mobile/ads/network/core/c$a;

    move-result-object v6

    .line 99
    if-nez v6, :cond_2

    .line 100
    new-instance v0, Lcom/yandex/mobile/ads/network/core/o;

    const/16 v6, 0x130

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v0, v6, v7, v1, v8}, Lcom/yandex/mobile/ads/network/core/o;-><init>(I[BLjava/util/Map;Z)V

    .line 132
    :goto_1
    return-object v0

    .line 109
    :cond_2
    iget-object v0, v6, Lcom/yandex/mobile/ads/network/core/c$a;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 110
    new-instance v0, Lcom/yandex/mobile/ads/network/core/o;

    const/16 v7, 0x130

    iget-object v8, v6, Lcom/yandex/mobile/ads/network/core/c$a;->a:[B

    iget-object v6, v6, Lcom/yandex/mobile/ads/network/core/c$a;->g:Ljava/util/Map;

    const/4 v9, 0x1

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v0, v7, v8, v6, v9}, Lcom/yandex/mobile/ads/network/core/o;-><init>(I[BLjava/util/Map;Z)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    const-string v0, "socket"

    new-instance v1, Lcom/yandex/mobile/ads/network/core/error/g;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/network/core/error/g;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/yandex/mobile/ads/network/core/a;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto/16 :goto_0

    .line 116
    :cond_3
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 117
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/network/core/a;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    .line 125
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 126
    sget-boolean v0, Lcom/yandex/mobile/ads/network/core/a;->a:Z

    if-nez v0, :cond_4

    sget v0, Lcom/yandex/mobile/ads/network/core/a;->d:I

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-lez v0, :cond_5

    :cond_4
    const-string v10, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v11, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v0

    const/4 v8, 0x2

    if-eqz v2, :cond_8

    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    aput-object v0, v11, v8

    const/4 v0, 0x3

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->w()Lcom/yandex/mobile/ads/network/core/u;

    move-result-object v6

    invoke-interface {v6}, Lcom/yandex/mobile/ads/network/core/u;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v0

    invoke-static {v10, v11}, Lcom/yandex/mobile/ads/network/core/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_5
    const/16 v0, 0xc8

    if-lt v7, v0, :cond_6

    const/16 v0, 0x12b

    if-le v7, v0, :cond_9

    .line 129
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 136
    :catch_1
    move-exception v0

    const-string v0, "connection"

    new-instance v1, Lcom/yandex/mobile/ads/network/core/error/g;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/network/core/error/g;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/yandex/mobile/ads/network/core/a;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto/16 :goto_0

    .line 121
    :cond_7
    const/4 v0, 0x0

    :try_start_2
    new-array v2, v0, [B

    goto :goto_2

    .line 126
    :cond_8
    const-string v0, "null"

    goto :goto_3

    .line 131
    :cond_9
    new-instance v0, Lcom/yandex/mobile/ads/network/core/o;

    const/4 v6, 0x0

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v0, v7, v2, v1, v6}, Lcom/yandex/mobile/ads/network/core/o;-><init>(I[BLjava/util/Map;Z)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 137
    :catch_2
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :catch_3
    move-exception v0

    .line 141
    if-eqz v3, :cond_b

    .line 142
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 146
    const-string v3, "Unexpected response code %d for %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->f()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/yandex/mobile/ads/network/core/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    if-eqz v2, :cond_10

    .line 149
    new-instance v3, Lcom/yandex/mobile/ads/network/core/o;

    const/4 v6, 0x0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v3, v0, v2, v1, v6}, Lcom/yandex/mobile/ads/network/core/o;-><init>(I[BLjava/util/Map;Z)V

    .line 151
    const/16 v1, 0x191

    if-eq v0, v1, :cond_a

    const/16 v1, 0x193

    if-ne v0, v1, :cond_c

    .line 153
    :cond_a
    const-string v0, "auth"

    new-instance v1, Lcom/yandex/mobile/ads/network/core/error/a;

    invoke-direct {v1, v3}, Lcom/yandex/mobile/ads/network/core/error/a;-><init>(Lcom/yandex/mobile/ads/network/core/o;)V

    invoke-static {v0, p1, v1}, Lcom/yandex/mobile/ads/network/core/a;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto/16 :goto_0

    .line 144
    :cond_b
    new-instance v1, Lcom/yandex/mobile/ads/network/core/error/d;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/network/core/error/d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :cond_c
    const/16 v1, 0x190

    if-lt v0, v1, :cond_d

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_d

    .line 157
    new-instance v0, Lcom/yandex/mobile/ads/network/core/error/b;

    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/network/core/error/b;-><init>(Lcom/yandex/mobile/ads/network/core/o;)V

    throw v0

    .line 158
    :cond_d
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_f

    const/16 v1, 0x257

    if-gt v0, v1, :cond_f

    .line 159
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 160
    const-string v0, "server"

    new-instance v1, Lcom/yandex/mobile/ads/network/core/error/f;

    invoke-direct {v1, v3}, Lcom/yandex/mobile/ads/network/core/error/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;)V

    invoke-static {v0, p1, v1}, Lcom/yandex/mobile/ads/network/core/a;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto/16 :goto_0

    .line 163
    :cond_e
    new-instance v0, Lcom/yandex/mobile/ads/network/core/error/f;

    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/network/core/error/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;)V

    throw v0

    .line 167
    :cond_f
    new-instance v0, Lcom/yandex/mobile/ads/network/core/error/f;

    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/network/core/error/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;)V

    throw v0

    .line 170
    :cond_10
    const-string v0, "network"

    new-instance v1, Lcom/yandex/mobile/ads/network/core/error/c;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/network/core/error/c;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/yandex/mobile/ads/network/core/a;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto/16 :goto_0
.end method
