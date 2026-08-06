.class public Lcom/yandex/metrica/impl/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/PreloadInfo;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/PreloadInfo;)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->a:Lcom/yandex/metrica/PreloadInfo;

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->a:Lcom/yandex/metrica/PreloadInfo;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    :try_start_0
    const-string v1, "preloadInfo"

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ak;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->a:Lcom/yandex/metrica/PreloadInfo;

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 95
    :try_start_0
    const-string v1, "trackingId"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ak;->a:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v2}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak;->a:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v1}, Lcom/yandex/metrica/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ak;->a:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v2}, Lcom/yandex/metrica/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 100
    const-string v2, "additionalParams"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
