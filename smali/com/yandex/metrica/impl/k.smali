.class public final Lcom/yandex/metrica/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ContentValues;

.field private c:Lcom/yandex/metrica/impl/ob/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    .line 37
    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/k;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 42
    return-object p0
.end method

.method public a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/bk$a;

    move-result-object v4

    iget-object v3, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "conn_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "net_type"

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/bk$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "country_code"

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/bk$a;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "operator_id"

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/bk$a;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lac"

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/bk$a;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "network_info"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/j;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->h()Lcom/yandex/metrica/impl/az;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "dId"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uId"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVer"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appBuild"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "kitVer"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clientKitVer"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osVer"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lang"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "root"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "report_request_parameters"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    :cond_0
    move v3, v2

    .line 46
    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    .line 47
    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/b$a;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "value"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "type"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "error_environment"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "user_info"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "truncated"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->n()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "app_environment"

    iget-object v3, p2, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "app_environment_revision"

    iget-wide v4, p2, Lcom/yandex/metrica/impl/b$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/j;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/j;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/j;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/j;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->u()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/z;->c()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/z;->d()Landroid/location/Location;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lat"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lon"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "precision"

    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "direction"

    invoke-virtual {v2}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "speed"

    invoke-virtual {v2}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "altitude"

    invoke-virtual {v2}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_0
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v1, "location_info"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :cond_1
    :goto_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->f()Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bn;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bn;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-le v2, v3, :cond_5

    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "wifi_network_info"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_5
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/bk$a;

    move-result-object v1

    const-string v2, "signal_strength"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bk$a;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->g()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v1, "cell_id"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "cell_info"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :goto_7
    return-void

    :cond_2
    move-object v1, v0

    .line 192
    goto/16 :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_3

    .line 193
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "wifi_network_info"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 194
    :cond_6
    :try_start_2
    const-string v2, "cell_id"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bk$a;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 195
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_7
    move-object v2, v1

    goto/16 :goto_0

    :cond_8
    move-object v2, v0

    goto/16 :goto_0
.end method
