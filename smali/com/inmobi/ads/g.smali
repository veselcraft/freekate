.class final Lcom/inmobi/ads/g;
.super Ljava/lang/Object;
.source "AdStore.java"

# interfaces
.implements Lcom/inmobi/ads/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/h;

.field private c:Lcom/inmobi/ads/g$a;

.field private d:Lcom/inmobi/ads/c;

.field private e:Z

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/ads/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/h;Lcom/inmobi/ads/g$a;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/g;->e:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/g;->f:J

    .line 37
    iput-object p1, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    .line 38
    iput-object p2, p0, Lcom/inmobi/ads/g;->c:Lcom/inmobi/ads/g$a;

    .line 39
    invoke-static {}, Lcom/inmobi/ads/c;->a()Lcom/inmobi/ads/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/g;->d:Lcom/inmobi/ads/c;

    .line 40
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/g;->e:Z

    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/g;->c:Lcom/inmobi/ads/g$a;

    iget-object v1, p0, Lcom/inmobi/ads/g;->d:Lcom/inmobi/ads/c;

    invoke-virtual {v1, p1, p2, p3}, Lcom/inmobi/ads/c;->b(JLjava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inmobi/ads/g$a;->a(Lcom/inmobi/ads/a;)V

    .line 61
    return-void
.end method

.method private a(Lcom/inmobi/ads/h;)V
    .locals 5

    .prologue
    .line 64
    new-instance v0, Lcom/inmobi/ads/e;

    invoke-virtual {p1}, Lcom/inmobi/ads/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inmobi/ads/h;->c()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/inmobi/ads/h;->g()Lcom/inmobi/commons/core/utilities/uid/d;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/e;-><init>(Ljava/lang/String;JLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 65
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->d(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->a(Ljava/util/Map;)V

    .line 67
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->b(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->f()Lcom/inmobi/ads/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->a(I)V

    .line 70
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->b(Ljava/util/Map;)V

    .line 71
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->b(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->c(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->b(I)V

    .line 74
    invoke-virtual {p1}, Lcom/inmobi/ads/h;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/e;->c(I)V

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/ads/g;->f:J

    .line 77
    new-instance v1, Lcom/inmobi/ads/d;

    invoke-direct {v1, v0, p0}, Lcom/inmobi/ads/d;-><init>(Lcom/inmobi/ads/e;Lcom/inmobi/ads/d$a;)V

    .line 78
    invoke-virtual {v1}, Lcom/inmobi/ads/d;->a()V

    .line 79
    return-void
.end method

.method private c(Lcom/inmobi/ads/f;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/f;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v3, "ads"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 128
    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/inmobi/ads/f;->b()Lcom/inmobi/ads/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/e;->d()I

    move-result v1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 131
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 132
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 133
    new-instance v6, Lcom/inmobi/ads/a;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v5, v7}, Lcom/inmobi/ads/a;-><init>(Lcom/inmobi/ads/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/g;->a:Ljava/lang/String;

    const-string v3, "Error while parsing ad response."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 140
    const-string v2, "type"

    iget-object v3, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v3}, Lcom/inmobi/ads/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "errorCode"

    const-string v3, "ParsingError"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "reason"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "ServerError"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    const/4 v0, 0x0

    .line 147
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/g;->e:Z

    .line 45
    iget-object v0, p0, Lcom/inmobi/ads/g;->d:Lcom/inmobi/ads/c;

    iget-object v1, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v1}, Lcom/inmobi/ads/h;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v2}, Lcom/inmobi/ads/h;->f()Lcom/inmobi/ads/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b$a;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;J)V

    .line 47
    iget-object v0, p0, Lcom/inmobi/ads/g;->d:Lcom/inmobi/ads/c;

    iget-object v1, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v1}, Lcom/inmobi/ads/h;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v1}, Lcom/inmobi/ads/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/ads/c;->a(JLjava/lang/String;)I

    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/g;->a(Lcom/inmobi/ads/h;)V

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v1}, Lcom/inmobi/ads/h;->f()Lcom/inmobi/ads/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->d()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v0}, Lcom/inmobi/ads/h;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v2}, Lcom/inmobi/ads/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/g;->a(JLjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/g;->a(Lcom/inmobi/ads/h;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v0}, Lcom/inmobi/ads/h;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v2}, Lcom/inmobi/ads/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/g;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/f;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 84
    invoke-direct {p0, p1}, Lcom/inmobi/ads/g;->c(Lcom/inmobi/ads/f;)Ljava/util/List;

    move-result-object v2

    .line 85
    if-nez v2, :cond_1

    .line 86
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse ad response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/inmobi/ads/g;->e:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/inmobi/ads/g;->c:Lcom/inmobi/ads/g$a;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/g$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 92
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/g;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad response received but no ad available:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/inmobi/ads/f;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 94
    const-string v3, "type"

    iget-object v4, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v4}, Lcom/inmobi/ads/h;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v3, "loadLatency"

    iget-wide v4, p0, Lcom/inmobi/ads/g;->f:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v1, "ads"

    const-string v3, "ServerNoFill"

    invoke-virtual {v0, v1, v3, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    iget-boolean v0, p0, Lcom/inmobi/ads/g;->e:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/g;->c:Lcom/inmobi/ads/g$a;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/g$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 105
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v4, "type"

    iget-object v5, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v5}, Lcom/inmobi/ads/h;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v4, "count"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v4, "loadLatency"

    iget-wide v6, p0, Lcom/inmobi/ads/g;->f:J

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v1, "ads"

    const-string v4, "ServerFill"

    invoke-virtual {v0, v1, v4, v3}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    iget-boolean v0, p0, Lcom/inmobi/ads/g;->e:Z

    if-nez v0, :cond_3

    .line 113
    iget-object v1, p0, Lcom/inmobi/ads/g;->c:Lcom/inmobi/ads/g$a;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-interface {v1, v0}, Lcom/inmobi/ads/g$a;->a(Lcom/inmobi/ads/a;)V

    .line 114
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/g;->d:Lcom/inmobi/ads/c;

    iget-object v1, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v1}, Lcom/inmobi/ads/h;->f()Lcom/inmobi/ads/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->b()I

    move-result v1

    iget-object v3, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v3}, Lcom/inmobi/ads/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/inmobi/ads/c;->a(Ljava/util/List;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b(Lcom/inmobi/ads/f;)V
    .locals 6

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/inmobi/ads/g;->e:Z

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 155
    const-string v3, "type"

    iget-object v4, p0, Lcom/inmobi/ads/g;->b:Lcom/inmobi/ads/h;

    invoke-virtual {v4}, Lcom/inmobi/ads/h;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v3, "errorCode"

    invoke-virtual {p1}, Lcom/inmobi/ads/f;->d()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v3, "reason"

    invoke-virtual {p1}, Lcom/inmobi/ads/f;->d()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/NetworkError;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v3, "loadLatency"

    iget-wide v4, p0, Lcom/inmobi/ads/g;->f:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v1, "ads"

    const-string v3, "ServerError"

    invoke-virtual {v0, v1, v3, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    iget-object v0, p0, Lcom/inmobi/ads/g;->c:Lcom/inmobi/ads/g$a;

    invoke-virtual {p1}, Lcom/inmobi/ads/f;->a()Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inmobi/ads/g$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 163
    :cond_0
    return-void
.end method
