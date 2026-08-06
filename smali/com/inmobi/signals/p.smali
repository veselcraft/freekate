.class public Lcom/inmobi/signals/p;
.super Lcom/inmobi/commons/core/configs/a;
.source "SignalsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/p$a;,
        Lcom/inmobi/signals/p$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/signals/p$b;

.field private c:Lcom/inmobi/signals/p$a;

.field private d:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/inmobi/commons/core/configs/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 31
    new-instance v0, Lcom/inmobi/signals/p$b;

    invoke-direct {v0}, Lcom/inmobi/signals/p$b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    .line 32
    new-instance v0, Lcom/inmobi/signals/p$a;

    invoke-direct {v0}, Lcom/inmobi/signals/p$a;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/signals/p;->h()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/signals/p;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/p;->a:Ljava/lang/String;

    const-string v3, "Default telemetry config provided for ads is invalid."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private h()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    const-string v1, "samplingFactor"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    const-string v1, "metricEnabled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 27
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "signals"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 50
    const-string v0, "ice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "sampleInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->a(Lcom/inmobi/signals/p$b;I)I

    .line 52
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "sampleHistorySize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->b(Lcom/inmobi/signals/p$b;I)I

    .line 53
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "stopRequestTimeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->c(Lcom/inmobi/signals/p$b;I)I

    .line 54
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->a(Lcom/inmobi/signals/p$b;Z)Z

    .line 55
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "endPoint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->a(Lcom/inmobi/signals/p$b;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->d(Lcom/inmobi/signals/p$b;I)I

    .line 57
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "retryInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->e(Lcom/inmobi/signals/p$b;I)I

    .line 58
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "locationEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->b(Lcom/inmobi/signals/p$b;Z)Z

    .line 59
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "sessionEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->c(Lcom/inmobi/signals/p$b;Z)Z

    .line 61
    const-string v1, "w"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v3, "wf"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/signals/p$b;->f(Lcom/inmobi/signals/p$b;I)I

    .line 63
    iget-object v2, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v3, "cwe"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/signals/p$b;->d(Lcom/inmobi/signals/p$b;Z)Z

    .line 64
    iget-object v2, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v3, "vwe"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/inmobi/signals/p$b;->e(Lcom/inmobi/signals/p$b;Z)Z

    .line 66
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v3, "oe"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/signals/p$b;->f(Lcom/inmobi/signals/p$b;Z)Z

    .line 68
    iget-object v2, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v3, "cce"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/signals/p$b;->g(Lcom/inmobi/signals/p$b;Z)Z

    .line 69
    iget-object v2, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v3, "vce"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/signals/p$b;->h(Lcom/inmobi/signals/p$b;Z)Z

    .line 70
    iget-object v2, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v3, "cof"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/inmobi/signals/p$b;->g(Lcom/inmobi/signals/p$b;I)I

    .line 72
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "e"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->i(Lcom/inmobi/signals/p$b;Z)Z

    .line 74
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "sampleInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$b;->h(Lcom/inmobi/signals/p$b;I)I

    .line 75
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    const-string v2, "maxHistorySize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/inmobi/signals/p$b;->i(Lcom/inmobi/signals/p$b;I)I

    .line 77
    const-string v0, "carb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$a;->a(Lcom/inmobi/signals/p$a;Z)Z

    .line 79
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    const-string v2, "getEndPoint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$a;->a(Lcom/inmobi/signals/p$a;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    const-string v2, "postEndPoint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$a;->b(Lcom/inmobi/signals/p$a;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    const-string v2, "retrieveFrequency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$a;->a(Lcom/inmobi/signals/p$a;I)I

    .line 82
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$a;->b(Lcom/inmobi/signals/p$a;I)I

    .line 83
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    const-string v2, "retryInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$a;->c(Lcom/inmobi/signals/p$a;I)I

    .line 84
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    const-string v2, "timeoutInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/signals/p$a;->d(Lcom/inmobi/signals/p$a;I)I

    .line 85
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    const-string v2, "maxGetResponseSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/signals/p$a;->a(Lcom/inmobi/signals/p$a;J)J

    .line 87
    const-string v0, "telemetry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/signals/p;->d:Lorg/json/JSONObject;

    .line 88
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string v2, "sampleInterval"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->a(Lcom/inmobi/signals/p$b;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v2, "stopRequestTimeout"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->b(Lcom/inmobi/signals/p$b;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v2, "sampleHistorySize"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->c(Lcom/inmobi/signals/p$b;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->d(Lcom/inmobi/signals/p$b;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    const-string v2, "endPoint"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->e(Lcom/inmobi/signals/p$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->f(Lcom/inmobi/signals/p$b;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v2, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->g(Lcom/inmobi/signals/p$b;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v2, "locationEnabled"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->h(Lcom/inmobi/signals/p$b;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 103
    const-string v2, "sessionEnabled"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v3}, Lcom/inmobi/signals/p$b;->i(Lcom/inmobi/signals/p$b;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 105
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v3, "wf"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->j(Lcom/inmobi/signals/p$b;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v3, "vwe"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->k(Lcom/inmobi/signals/p$b;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 108
    const-string v3, "cwe"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->l(Lcom/inmobi/signals/p$b;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 109
    const-string v3, "w"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v3, "cof"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->m(Lcom/inmobi/signals/p$b;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v3, "vce"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->n(Lcom/inmobi/signals/p$b;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 114
    const-string v3, "cce"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->o(Lcom/inmobi/signals/p$b;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    const-string v3, "oe"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->p(Lcom/inmobi/signals/p$b;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 116
    const-string v3, "c"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 119
    const-string v3, "e"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->q(Lcom/inmobi/signals/p$b;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 120
    const-string v3, "sampleInterval"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->r(Lcom/inmobi/signals/p$b;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v3, "maxHistorySize"

    iget-object v4, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v4}, Lcom/inmobi/signals/p$b;->s(Lcom/inmobi/signals/p$b;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v3, "ar"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v2, "ice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 127
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v3}, Lcom/inmobi/signals/p$a;->a(Lcom/inmobi/signals/p$a;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 128
    const-string v2, "getEndPoint"

    iget-object v3, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v3}, Lcom/inmobi/signals/p$a;->b(Lcom/inmobi/signals/p$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "postEndPoint"

    iget-object v3, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v3}, Lcom/inmobi/signals/p$a;->c(Lcom/inmobi/signals/p$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v2, "retrieveFrequency"

    iget-object v3, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v3}, Lcom/inmobi/signals/p$a;->d(Lcom/inmobi/signals/p$a;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v3}, Lcom/inmobi/signals/p$a;->e(Lcom/inmobi/signals/p$a;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v2, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v3}, Lcom/inmobi/signals/p$a;->f(Lcom/inmobi/signals/p$a;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v2, "timeoutInterval"

    iget-object v3, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v3}, Lcom/inmobi/signals/p$a;->g(Lcom/inmobi/signals/p$a;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string v2, "maxGetResponseSize"

    iget-object v3, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-virtual {v3}, Lcom/inmobi/signals/p$a;->h()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 136
    const-string v2, "carb"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v1, "telemetry"

    iget-object v2, p0, Lcom/inmobi/signals/p;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    return-object v0
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v1}, Lcom/inmobi/signals/p$b;->a(Lcom/inmobi/signals/p$b;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v1}, Lcom/inmobi/signals/p$b;->c(Lcom/inmobi/signals/p$b;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    .line 144
    invoke-static {v1}, Lcom/inmobi/signals/p$b;->b(Lcom/inmobi/signals/p$b;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v1}, Lcom/inmobi/signals/p$b;->e(Lcom/inmobi/signals/p$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    .line 145
    invoke-static {v1}, Lcom/inmobi/signals/p$b;->f(Lcom/inmobi/signals/p$b;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v1}, Lcom/inmobi/signals/p$b;->g(Lcom/inmobi/signals/p$b;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->j()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->m()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    .line 146
    invoke-static {v1}, Lcom/inmobi/signals/p$b;->s(Lcom/inmobi/signals/p$b;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    invoke-static {v1}, Lcom/inmobi/signals/p$b;->r(Lcom/inmobi/signals/p$b;)I

    move-result v1

    if-gez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v1}, Lcom/inmobi/signals/p$a;->b(Lcom/inmobi/signals/p$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v1}, Lcom/inmobi/signals/p$a;->c(Lcom/inmobi/signals/p$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    .line 151
    invoke-static {v1}, Lcom/inmobi/signals/p$a;->b(Lcom/inmobi/signals/p$a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v1}, Lcom/inmobi/signals/p$a;->b(Lcom/inmobi/signals/p$a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    .line 152
    invoke-static {v1}, Lcom/inmobi/signals/p$a;->c(Lcom/inmobi/signals/p$a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v1}, Lcom/inmobi/signals/p$a;->c(Lcom/inmobi/signals/p$a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    .line 153
    invoke-static {v1}, Lcom/inmobi/signals/p$a;->d(Lcom/inmobi/signals/p$a;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v1}, Lcom/inmobi/signals/p$a;->e(Lcom/inmobi/signals/p$a;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v1}, Lcom/inmobi/signals/p$a;->f(Lcom/inmobi/signals/p$a;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    .line 154
    invoke-static {v1}, Lcom/inmobi/signals/p$a;->g(Lcom/inmobi/signals/p$a;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    invoke-static {v1}, Lcom/inmobi/signals/p$a;->h(Lcom/inmobi/signals/p$a;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 158
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/inmobi/signals/p;

    invoke-direct {v0}, Lcom/inmobi/signals/p;-><init>()V

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/inmobi/signals/p;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()Lcom/inmobi/signals/p$b;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$b;

    return-object v0
.end method

.method public g()Lcom/inmobi/signals/p$a;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/inmobi/signals/p;->c:Lcom/inmobi/signals/p$a;

    return-object v0
.end method
