.class final Lcom/inmobi/commons/core/configs/e;
.super Lcom/inmobi/commons/core/network/NetworkRequest;
.source "ConfigNetworkRequest.java"


# static fields
.field private static final d:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private e:I

.field private f:I

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/configs/e;->d:Ljava/lang/String;

    .line 26
    const-string v0, "http://config.inmobi.com/config-server/v1/config/secure.cfg"

    sput-object v0, Lcom/inmobi/commons/core/configs/e;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/inmobi/commons/core/utilities/uid/d;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;",
            "Lcom/inmobi/commons/core/utilities/uid/d;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object p3, Lcom/inmobi/commons/core/configs/e;->h:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p2}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 31
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/e;->g:Ljava/util/Map;

    .line 32
    iput p4, p0, Lcom/inmobi/commons/core/configs/e;->e:I

    .line 33
    iput p5, p0, Lcom/inmobi/commons/core/configs/e;->f:I

    .line 34
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 10

    .prologue
    .line 44
    new-instance v2, Lcom/inmobi/commons/core/configs/c;

    invoke-direct {v2}, Lcom/inmobi/commons/core/configs/c;-><init>()V

    .line 45
    const-string v1, ""

    .line 48
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 51
    const-string v6, "n"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v6, "t"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/core/configs/c;->b(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/configs/e;->d:Ljava/lang/String;

    const-string v4, "Problem while creating config network request\'s payload."

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 60
    :goto_1
    return-object v0

    .line 56
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a()V

    .line 39
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/e;->c:Ljava/util/Map;

    const-string v1, "p"

    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/e;->c:Ljava/util/Map;

    const-string v1, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/e;->g:Ljava/util/Map;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/inmobi/commons/core/configs/e;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/inmobi/commons/core/configs/e;->f:I

    return v0
.end method
