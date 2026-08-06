.class public Lcom/yandex/mobile/ads/network/core/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 126
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 129
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/c$a;
    .locals 25

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yandex/mobile/ads/network/core/o;->c:Ljava/util/Map;

    move-object/from16 v24, v0

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    const-wide/16 v16, 0x0

    .line 43
    const-wide/16 v14, 0x0

    .line 44
    const-wide/16 v20, 0x0

    .line 45
    const-wide/16 v18, 0x0

    .line 46
    const-wide/16 v10, 0x0

    .line 47
    const-wide/16 v8, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v6, 0x0

    .line 51
    const-string v2, "Date"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    if-eqz v2, :cond_0

    .line 56
    invoke-static {v2}, Lcom/yandex/mobile/ads/network/core/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    .line 59
    :cond_0
    const-string v2, "Cache-Control"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    if-eqz v2, :cond_d

    .line 61
    const/4 v12, 0x1

    .line 62
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 63
    const/4 v2, 0x0

    move v3, v6

    move-wide v6, v8

    move-wide v8, v10

    :goto_0
    array-length v10, v13

    if-ge v2, v10, :cond_7

    .line 64
    aget-object v10, v13, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 65
    const-string v11, "no-cache"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "no-store"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 66
    :cond_1
    const/4 v2, 0x0

    .line 117
    :goto_1
    return-object v2

    .line 67
    :cond_2
    const-string v11, "max-age="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 69
    const/16 v11, 0x8

    :try_start_0
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    .line 63
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_4
    const-string v11, "stale-while-revalidate="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 74
    const/16 v11, 0x17

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    goto :goto_2

    .line 77
    :cond_5
    const-string v11, "must-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "proxy-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 78
    :cond_6
    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    move-wide v10, v8

    move-wide v8, v6

    move v6, v12

    .line 83
    :goto_3
    const-string v2, "Expires"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    if-eqz v2, :cond_c

    .line 85
    invoke-static {v2}, Lcom/yandex/mobile/ads/network/core/h;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 88
    :goto_4
    const-string v2, "Last-Modified"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    if-eqz v2, :cond_b

    .line 90
    invoke-static {v2}, Lcom/yandex/mobile/ads/network/core/h;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 93
    :goto_5
    const-string v2, "ETag"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    if-eqz v6, :cond_9

    .line 98
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v10

    add-long v10, v22, v6

    .line 99
    if-eqz v3, :cond_8

    move-wide v6, v10

    .line 108
    :goto_6
    new-instance v3, Lcom/yandex/mobile/ads/network/core/c$a;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/network/core/c$a;-><init>()V

    .line 109
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yandex/mobile/ads/network/core/o;->b:[B

    iput-object v8, v3, Lcom/yandex/mobile/ads/network/core/c$a;->a:[B

    .line 110
    iput-object v2, v3, Lcom/yandex/mobile/ads/network/core/c$a;->b:Ljava/lang/String;

    .line 111
    iput-wide v10, v3, Lcom/yandex/mobile/ads/network/core/c$a;->f:J

    .line 112
    iput-wide v6, v3, Lcom/yandex/mobile/ads/network/core/c$a;->e:J

    .line 113
    iput-wide v4, v3, Lcom/yandex/mobile/ads/network/core/c$a;->c:J

    .line 114
    iput-wide v14, v3, Lcom/yandex/mobile/ads/network/core/c$a;->d:J

    .line 115
    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/yandex/mobile/ads/network/core/c$a;->g:Ljava/util/Map;

    move-object v2, v3

    .line 117
    goto/16 :goto_1

    .line 99
    :cond_8
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v10

    goto :goto_6

    .line 102
    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_a

    cmp-long v3, v12, v4

    if-ltz v3, :cond_a

    .line 104
    sub-long v6, v12, v4

    add-long v6, v6, v22

    move-wide v10, v6

    .line 105
    goto :goto_6

    .line 76
    :catch_0
    move-exception v10

    goto/16 :goto_2

    .line 71
    :catch_1
    move-exception v10

    goto/16 :goto_2

    :cond_a
    move-wide/from16 v6, v18

    move-wide/from16 v10, v20

    goto :goto_6

    :cond_b
    move-wide/from16 v14, v16

    goto :goto_5

    :cond_c
    move-wide v12, v14

    goto :goto_4

    :cond_d
    move v3, v6

    move v6, v7

    goto :goto_3
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 163
    const-string v2, "ISO-8859-1"

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "charset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v0, v4, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
