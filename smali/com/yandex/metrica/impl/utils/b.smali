.class public Lcom/yandex/metrica/impl/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/utils/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 86
    array-length v0, v1

    if-le v0, p2, :cond_0

    .line 87
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 93
    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 73
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v1

    const-string v2, "\"%s\"\'s parameter %s size exceeded limit of %d characters"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/utils/e;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    .line 77
    :cond_0
    return-object p1
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/utils/b$a;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/utils/b$a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/utils/b$a;->b()I

    move-result v0

    invoke-virtual {p0, p2, v0, p5}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/utils/b$a;->c()I

    move-result v1

    invoke-virtual {p0, p3, v1, p5}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p4}, Lcom/yandex/metrica/impl/utils/b$a;->a()I

    move-result v3

    if-lt v2, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/utils/b$a;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lcom/yandex/metrica/impl/utils/b;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-object p1

    .line 65
    :cond_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([BI)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    .line 98
    array-length v0, p1

    if-le v0, p2, :cond_0

    .line 99
    new-array v0, p2, [B

    .line 100
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 102
    :cond_0
    return-object p1
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 106
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "The %s has reached the limit of %d items. Item with key %s will be ignored"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method
