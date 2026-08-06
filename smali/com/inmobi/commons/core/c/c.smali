.class Lcom/inmobi/commons/core/c/c;
.super Lcom/inmobi/commons/core/configs/a;
.source "TelemetryConfig.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/c/b;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 24
    const-string v0, "https://sdkm.w.inmobi.com/metrics/e.asm?v=1&"

    iput-object v0, p0, Lcom/inmobi/commons/core/c/c;->b:Ljava/lang/String;

    .line 25
    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/commons/core/c/c;->c:I

    .line 26
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/commons/core/c/c;->d:I

    .line 27
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/core/c/c;->e:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/commons/core/c/c;->f:I

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/c/c;->g:I

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/commons/core/c/c;->h:I

    .line 33
    new-instance v0, Lcom/inmobi/commons/core/c/b;

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    .line 34
    return-void
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/inmobi/commons/core/c/c;->c:I

    .line 109
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/inmobi/commons/core/c/c;->b:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/inmobi/commons/core/c/c;->f:I

    .line 113
    return-void
.end method

.method private c(I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/inmobi/commons/core/c/c;->e:I

    .line 117
    return-void
.end method

.method private d(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/inmobi/commons/core/c/c;->g:I

    .line 121
    return-void
.end method

.method private e(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/inmobi/commons/core/c/c;->h:I

    .line 125
    return-void
.end method

.method private f(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/inmobi/commons/core/c/c;->d:I

    .line 129
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "telemetry"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 61
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/c/b;->b(Z)V

    .line 63
    iget-object v1, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    const-string v2, "samplingFactor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/c/b;->a(I)V

    .line 64
    iget-object v1, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    const-string v2, "metricEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/c/b;->a(Z)V

    .line 66
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;)V

    .line 67
    const-string v0, "processingInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/c;->a(I)V

    .line 68
    const-string v0, "retryInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/c;->f(I)V

    .line 69
    const-string v0, "maxBatchSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/c;->c(I)V

    .line 70
    const-string v0, "maxRetryCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/c;->b(I)V

    .line 71
    const-string v0, "maxEventsToPersist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/c;->d(I)V

    .line 72
    const-string v0, "memoryThreshold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/c;->e(I)V

    .line 73
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 80
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/c/b;->b()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 81
    const-string v2, "samplingFactor"

    iget-object v3, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/c/b;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v2, "metricEnabled"

    iget-object v3, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/c/b;->d()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 83
    const-string v2, "base"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "processingInterval"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/c;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v1, "retryInterval"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/c;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v1, "maxBatchSize"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/c;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v1, "maxRetryCount"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/c;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v1, "maxEventsToPersist"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "memoryThreshold"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/c/c;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    return-object v0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/c/b;->c()I

    move-result v1

    if-gez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/inmobi/commons/core/c/c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/core/c/c;->b:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/commons/core/c/c;->b:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :cond_2
    iget v1, p0, Lcom/inmobi/commons/core/c/c;->d:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/c/c;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/c/c;->f:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/c/c;->h:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/c/c;->e:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/c/c;->g:I

    if-lez v1, :cond_0

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/inmobi/commons/core/c/c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/c;-><init>()V

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inmobi/commons/core/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/inmobi/commons/core/c/c;->d:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/inmobi/commons/core/c/c;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/inmobi/commons/core/c/c;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/inmobi/commons/core/c/c;->f:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/inmobi/commons/core/c/c;->c:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/inmobi/commons/core/c/c;->g:I

    return v0
.end method

.method public m()Lcom/inmobi/commons/core/c/b;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/commons/core/c/c;->a:Lcom/inmobi/commons/core/c/b;

    return-object v0
.end method
