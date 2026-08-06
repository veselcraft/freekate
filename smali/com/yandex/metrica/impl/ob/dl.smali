.class public Lcom/yandex/metrica/impl/ob/dl;
.super Lcom/yandex/metrica/impl/ob/dm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/dm",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 35
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/dm;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 35
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/dq;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/dq;->a:[B

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/dq;->b:Ljava/util/Map;

    const-string v3, "utf-8"

    .line 42
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/dn;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lcom/yandex/metrica/impl/ob/do;

    sget-object v2, Lcom/yandex/metrica/impl/ob/do$a;->e:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/do;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 46
    :catch_1
    move-exception v0

    .line 47
    new-instance v1, Lcom/yandex/metrica/impl/ob/do;

    sget-object v2, Lcom/yandex/metrica/impl/ob/do$a;->e:Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/do;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected synthetic b(Lcom/yandex/metrica/impl/ob/dq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dl;->a(Lcom/yandex/metrica/impl/ob/dq;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
