.class public Lcom/inmobi/commons/core/c/b;
.super Ljava/lang/Object;
.source "TelemetryComponentConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/c/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/c/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/inmobi/commons/core/c/b;->a:I

    .line 22
    const-string v0, "telemetry"

    iput-object v0, p0, Lcom/inmobi/commons/core/c/b;->b:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/inmobi/commons/core/c/b;->c:Z

    .line 24
    iput-boolean v1, p0, Lcom/inmobi/commons/core/c/b;->d:Z

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/b;->e:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/commons/core/c/b;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/inmobi/commons/core/c/b;->a:I

    .line 22
    const-string v1, "telemetry"

    iput-object v1, p0, Lcom/inmobi/commons/core/c/b;->b:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/inmobi/commons/core/c/b;->c:Z

    .line 24
    iput-boolean v0, p0, Lcom/inmobi/commons/core/c/b;->d:Z

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/inmobi/commons/core/c/b;->e:Ljava/util/Map;

    .line 33
    if-nez p2, :cond_1

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Lcom/inmobi/commons/core/c/b;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p3}, Lcom/inmobi/commons/core/c/b;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/inmobi/commons/core/c/b;->b:Ljava/lang/String;

    .line 40
    const-string v1, "enabled"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "enabled"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_2
    iput-boolean v1, p0, Lcom/inmobi/commons/core/c/b;->c:Z

    .line 42
    const-string v1, "samplingFactor"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "samplingFactor"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/core/c/b;->a(I)V

    .line 43
    const-string v1, "metricEnabled"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "metricEnabled"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_4
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/core/c/b;->a(Z)V

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/inmobi/commons/core/c/b;->e:Ljava/util/Map;

    .line 46
    const-string v1, "events"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "events"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    .line 48
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 49
    new-instance v3, Lcom/inmobi/commons/core/c/b$a;

    invoke-direct {v3}, Lcom/inmobi/commons/core/c/b$a;-><init>()V

    .line 51
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 52
    const-string v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/inmobi/commons/core/c/b$a;->a(Ljava/lang/String;)V

    .line 53
    const-string v0, "samplingFactor"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "samplingFactor"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_6
    invoke-virtual {v3, v0}, Lcom/inmobi/commons/core/c/b$a;->a(I)V

    .line 54
    const-string v0, "metricEnabled"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "metricEnabled"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_7
    invoke-virtual {v3, v0}, Lcom/inmobi/commons/core/c/b$a;->a(Z)V

    .line 56
    iget-object v0, p0, Lcom/inmobi/commons/core/c/b;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/c/b$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_3
    move-object v1, p1

    .line 39
    goto/16 :goto_1

    .line 40
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 42
    :cond_5
    invoke-virtual {p3}, Lcom/inmobi/commons/core/c/b;->c()I

    move-result v1

    goto :goto_3

    .line 43
    :cond_6
    invoke-virtual {p3}, Lcom/inmobi/commons/core/c/b;->d()Z

    move-result v1

    goto :goto_4

    .line 53
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/b;->c()I

    move-result v0

    goto :goto_6

    .line 54
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/b;->d()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_7

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-direct {p0, p1, p3}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Lcom/inmobi/commons/core/c/b;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/commons/core/c/b;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/c/b;->b(Z)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/core/c/b;->b(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/inmobi/commons/core/c/b$a;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/inmobi/commons/core/c/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/c/b$a;

    .line 83
    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/inmobi/commons/core/c/b$a;

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/b;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/b;->d()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/inmobi/commons/core/c/b$a;-><init>(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inmobi/commons/core/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/inmobi/commons/core/c/b;->a:I

    .line 112
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/inmobi/commons/core/c/b;->d:Z

    .line 104
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/inmobi/commons/core/c/b;->b:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/inmobi/commons/core/c/b;->c:Z

    .line 108
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/inmobi/commons/core/c/b;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/inmobi/commons/core/c/b;->a:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/inmobi/commons/core/c/b;->d:Z

    return v0
.end method
