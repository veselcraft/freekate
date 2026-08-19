.class public Lcom/my/target/em;
.super Ljava/lang/Object;
.source "StatsParser.java"


# instance fields
.field private final adConfig:Lcom/my/target/a;

.field private cj:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final ez:Lcom/my/target/bz;


# direct methods
.method protected constructor <init>(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/my/target/em;->ez:Lcom/my/target/bz;

    .line 44
    iput-object p2, p0, Lcom/my/target/em;->adConfig:Lcom/my/target/a;

    .line 45
    iput-object p3, p0, Lcom/my/target/em;->context:Landroid/content/Context;

    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;F)Lcom/my/target/dh;
    .locals 6

    const-string v0, "viewablePercent"

    const/4 v1, -0x1

    .line 140
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Bad value"

    if-ltz v0, :cond_6

    const/16 v3, 0x64

    if-le v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "ovv"

    .line 147
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 149
    invoke-static {p2}, Lcom/my/target/df;->L(Ljava/lang/String;)Lcom/my/target/df;

    move-result-object p2

    .line 150
    invoke-virtual {p2, v0}, Lcom/my/target/dj;->w(I)V

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/df;->q(Z)V

    const-string v0, "pvalue"

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {p2}, Lcom/my/target/dj;->cv()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    cmpl-float v2, v0, v5

    if-ltz v2, :cond_2

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_2

    cmpl-float p1, p3, v5

    if-lez p1, :cond_1

    mul-float v0, v0, p3

    div-float/2addr v0, v2

    .line 161
    invoke-virtual {p2, v0}, Lcom/my/target/dj;->h(F)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p2, v0}, Lcom/my/target/dj;->i(F)V

    :goto_0
    return-object p2

    :cond_2
    const-string p3, "value"

    .line 171
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {p2}, Lcom/my/target/dj;->cu()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p1, p3, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float p1, v2

    cmpl-float p3, p1, v5

    if-ltz p3, :cond_5

    .line 176
    invoke-virtual {p2, p1}, Lcom/my/target/dj;->h(F)V

    return-object p2

    :cond_3
    const-string p3, "duration"

    .line 181
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    invoke-static {p2}, Lcom/my/target/de;->K(Ljava/lang/String;)Lcom/my/target/de;

    move-result-object p2

    .line 184
    invoke-virtual {p2, v0}, Lcom/my/target/dj;->w(I)V

    .line 185
    invoke-virtual {p2}, Lcom/my/target/de;->getDuration()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p1, p3, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float p1, v2

    cmpl-float p3, p1, v5

    if-ltz p3, :cond_5

    .line 188
    invoke-virtual {p2, p1}, Lcom/my/target/de;->setDuration(F)V

    return-object p2

    :cond_4
    const-string p1, "failed to parse viewabilityStat: no ovv or duration"

    .line 194
    invoke-virtual {p0, v2, p1}, Lcom/my/target/em;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    const-string p1, "failed to parse viewabilityStat: invalid viewable percent value"

    .line 143
    invoke-virtual {p0, v2, p1}, Lcom/my/target/em;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static k(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/em;
    .locals 1

    .line 36
    new-instance v0, Lcom/my/target/em;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/em;-><init>(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method a(Lorg/json/JSONObject;Ljava/lang/String;F)Lcom/my/target/dg;
    .locals 5

    .line 105
    invoke-static {p2}, Lcom/my/target/dg;->M(Ljava/lang/String;)Lcom/my/target/dg;

    move-result-object p2

    const-string v0, "pvalue"

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p2}, Lcom/my/target/dg;->cv()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_1

    cmpl-float p1, p3, v2

    if-lez p1, :cond_0

    mul-float v0, v0, p3

    div-float/2addr v0, v1

    .line 115
    invoke-virtual {p2, v0}, Lcom/my/target/dg;->h(F)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2, v0}, Lcom/my/target/dg;->i(F)V

    :goto_0
    return-object p2

    :cond_1
    const-string p3, "value"

    .line 125
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p2}, Lcom/my/target/dg;->cu()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, p3, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p1, v0

    cmpl-float p3, p1, v2

    if-ltz p3, :cond_2

    .line 130
    invoke-virtual {p2, p1}, Lcom/my/target/dg;->h(F)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lorg/json/JSONObject;F)Lcom/my/target/dh;
    .locals 3

    const-string v0, "type"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 85
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "playheadViewabilityValue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "playheadReachedValue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    invoke-static {v0, v1}, Lcom/my/target/dh;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/dh;

    move-result-object p1

    return-object p1

    .line 95
    :cond_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/my/target/em;->a(Lorg/json/JSONObject;Ljava/lang/String;F)Lcom/my/target/dg;

    move-result-object p1

    return-object p1

    .line 97
    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lcom/my/target/em;->b(Lorg/json/JSONObject;Ljava/lang/String;F)Lcom/my/target/dh;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "Required field"

    const-string p2, "failed to parse stat: no type or url"

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/my/target/em;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/my/target/di;Lorg/json/JSONObject;Ljava/lang/String;F)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/my/target/em;->ez:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bn()Lcom/my/target/di;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Lcom/my/target/di;->a(Lcom/my/target/di;F)V

    const-string v0, "statistics"

    .line 55
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 66
    :cond_1
    iput-object p3, p0, Lcom/my/target/em;->cj:Ljava/lang/String;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_4

    .line 69
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p0, v1, p4}, Lcom/my/target/em;->a(Lorg/json/JSONObject;F)Lcom/my/target/dh;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {p1, v1}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 201
    invoke-static {p1}, Lcom/my/target/dq;->P(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->Q(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/em;->adConfig:Lcom/my/target/a;

    .line 202
    invoke-virtual {p2}, Lcom/my/target/a;->getSlotId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->x(I)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/em;->cj:Ljava/lang/String;

    .line 203
    invoke-virtual {p1, p2}, Lcom/my/target/dq;->S(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/em;->ez:Lcom/my/target/bz;

    .line 204
    invoke-virtual {p2}, Lcom/my/target/bz;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->R(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/em;->context:Landroid/content/Context;

    .line 205
    invoke-virtual {p1, p2}, Lcom/my/target/dq;->q(Landroid/content/Context;)V

    return-void
.end method
