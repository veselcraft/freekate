.class public Lcom/yandex/metrica/impl/ob/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/ob/dj;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/dj;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dn;->a:Lcom/yandex/metrica/impl/ob/dj;

    .line 33
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 144
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    if-eqz v0, :cond_0

    .line 146
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 147
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 148
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 149
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 150
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    aget-object p1, v3, v1

    .line 157
    :cond_0
    return-object p1

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/dr;Lcom/yandex/metrica/impl/ob/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/dr",
            "<*>;",
            "Lcom/yandex/metrica/impl/ob/do;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->o()Lcom/yandex/metrica/impl/ob/dt;

    move-result-object v0

    .line 102
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dt;->a(Lcom/yandex/metrica/impl/ob/do;)V
    :try_end_0
    .catch Lcom/yandex/metrica/impl/ob/do; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-void

    .line 103
    :catch_0
    move-exception v0

    throw v0
.end method

.method private static a(Lorg/apache/http/HttpEntity;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 111
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 113
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/yandex/metrica/impl/ob/do;

    sget-object v2, Lcom/yandex/metrica/impl/ob/do$a;->f:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/do;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    .line 126
    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    .line 117
    :cond_0
    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    .line 119
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 120
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 126
    :try_start_3
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dr;)Lcom/yandex/metrica/impl/ob/dq;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/dr",
            "<*>;)",
            "Lcom/yandex/metrica/impl/ob/dq;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 37
    .line 39
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dn;->a:Lcom/yandex/metrica/impl/ob/dj;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/dj;->a(Lcom/yandex/metrica/impl/ob/dr;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 42
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 45
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    new-instance v2, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move v0, v5

    :goto_1
    array-length v8, v7

    if-ge v0, v8, :cond_0

    aget-object v8, v7, v0

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v0

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_0
    :try_start_2
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dn;->a(Lorg/apache/http/HttpEntity;)[B
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v1

    .line 56
    :goto_2
    const/16 v0, 0xc8

    if-lt v6, v0, :cond_1

    const/16 v0, 0x12b

    if-le v6, v0, :cond_3

    .line 57
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 61
    :catch_0
    move-exception v0

    new-instance v0, Lcom/yandex/metrica/impl/ob/do;

    sget-object v1, Lcom/yandex/metrica/impl/ob/do$a;->g:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/do;-><init>()V

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/dn;->a(Lcom/yandex/metrica/impl/ob/dr;Lcom/yandex/metrica/impl/ob/do;)V

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    :try_start_4
    new-array v1, v0, [B
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    .line 59
    :cond_3
    :try_start_5
    new-instance v0, Lcom/yandex/metrica/impl/ob/dq;

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v6}, Lcom/yandex/metrica/impl/ob/dq;-><init>([BLjava/util/Map;B)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    return-object v0

    .line 63
    :catch_1
    move-exception v0

    new-instance v0, Lcom/yandex/metrica/impl/ob/do;

    sget-object v1, Lcom/yandex/metrica/impl/ob/do$a;->d:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/do;-><init>()V

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/dn;->a(Lcom/yandex/metrica/impl/ob/dr;Lcom/yandex/metrica/impl/ob/do;)V

    goto :goto_0

    .line 64
    :catch_2
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 67
    :goto_3
    if-eqz v4, :cond_5

    .line 70
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 74
    if-eqz v2, :cond_7

    .line 75
    new-instance v4, Lcom/yandex/metrica/impl/ob/dq;

    invoke-direct {v4, v2, v1, v5}, Lcom/yandex/metrica/impl/ob/dq;-><init>([BLjava/util/Map;B)V

    .line 77
    const/16 v1, 0x191

    if-eq v0, v1, :cond_4

    const/16 v1, 0x193

    if-ne v0, v1, :cond_6

    .line 79
    :cond_4
    new-instance v0, Lcom/yandex/metrica/impl/ob/do;

    sget-object v1, Lcom/yandex/metrica/impl/ob/do$a;->b:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v0, v5}, Lcom/yandex/metrica/impl/ob/do;-><init>(B)V

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/dn;->a(Lcom/yandex/metrica/impl/ob/dr;Lcom/yandex/metrica/impl/ob/do;)V

    goto/16 :goto_0

    .line 72
    :cond_5
    new-instance v1, Lcom/yandex/metrica/impl/ob/do;

    sget-object v2, Lcom/yandex/metrica/impl/ob/do$a;->a:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/do;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_6
    new-instance v0, Lcom/yandex/metrica/impl/ob/do;

    sget-object v1, Lcom/yandex/metrica/impl/ob/do$a;->f:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v0, v5}, Lcom/yandex/metrica/impl/ob/do;-><init>(B)V

    throw v0

    .line 86
    :cond_7
    new-instance v0, Lcom/yandex/metrica/impl/ob/do;

    sget-object v1, Lcom/yandex/metrica/impl/ob/do$a;->c:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v0, v5}, Lcom/yandex/metrica/impl/ob/do;-><init>(B)V

    throw v0

    .line 66
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_3
.end method
