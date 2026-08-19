.class public Lcom/my/target/du;
.super Ljava/lang/Object;
.source "AdditionalDataParser.java"


# instance fields
.field private final adConfig:Lcom/my/target/a;

.field private final context:Landroid/content/Context;

.field private final ex:Lcom/my/target/bz;

.field private final ey:Lcom/my/target/em;


# direct methods
.method private constructor <init>(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/my/target/du;->ex:Lcom/my/target/bz;

    .line 36
    iput-object p2, p0, Lcom/my/target/du;->adConfig:Lcom/my/target/a;

    .line 37
    iput-object p3, p0, Lcom/my/target/du;->context:Landroid/content/Context;

    .line 38
    invoke-static {p1, p2, p3}, Lcom/my/target/em;->k(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/em;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/du;->ey:Lcom/my/target/em;

    return-void
.end method

.method public static a(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/du;
    .locals 1

    .line 25
    new-instance v0, Lcom/my/target/du;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/du;-><init>(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)V

    return-object v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-static {p1}, Lcom/my/target/dq;->P(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->Q(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/du;->adConfig:Lcom/my/target/a;

    .line 157
    invoke-virtual {p2}, Lcom/my/target/a;->getSlotId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->x(I)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/du;->ex:Lcom/my/target/bz;

    .line 158
    invoke-virtual {p2}, Lcom/my/target/bz;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->R(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/du;->context:Landroid/content/Context;

    .line 159
    invoke-virtual {p1, p2}, Lcom/my/target/dq;->q(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public e(Lorg/json/JSONObject;)Lcom/my/target/bz;
    .locals 13

    .line 43
    iget-object v0, p0, Lcom/my/target/du;->ex:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bg()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const-string p1, "got additional data, but max redirects limit exceeded"

    .line 46
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-object v1

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/my/target/du;->ex:Lcom/my/target/bz;

    invoke-virtual {v2}, Lcom/my/target/bz;->getId()I

    move-result v2

    const-string v3, "id"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "url"

    .line 50
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No url in additionalData Id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Required field"

    invoke-direct {p0, v0, p1}, Lcom/my/target/du;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 56
    :cond_1
    invoke-static {v3}, Lcom/my/target/bz;->q(Ljava/lang/String;)Lcom/my/target/bz;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 57
    invoke-virtual {v1, v0}, Lcom/my/target/bz;->f(I)V

    .line 58
    invoke-virtual {v1, v2}, Lcom/my/target/bz;->setId(I)V

    .line 59
    invoke-virtual {v1}, Lcom/my/target/bz;->aZ()Z

    move-result v0

    const-string v2, "doAfter"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/my/target/bz;->m(Z)V

    .line 60
    invoke-virtual {v1}, Lcom/my/target/bz;->ba()I

    move-result v0

    const-string v2, "doOnEmptyResponseFromId"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/my/target/bz;->g(I)V

    .line 61
    invoke-virtual {v1}, Lcom/my/target/bz;->bb()Z

    move-result v0

    const-string v2, "isMidrollPoint"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    invoke-virtual {v1, v0}, Lcom/my/target/bz;->o(Z)V

    .line 63
    invoke-virtual {v1}, Lcom/my/target/bz;->getAllowCloseDelay()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "allowCloseDelay"

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/my/target/bz;->setAllowCloseDelay(F)V

    const-string v2, "allowClose"

    .line 65
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/bz;->a(Ljava/lang/Boolean;)V

    :cond_2
    const-string v2, "hasPause"

    .line 69
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/bz;->b(Ljava/lang/Boolean;)V

    :cond_3
    const-string v2, "allowSeek"

    .line 73
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/bz;->c(Ljava/lang/Boolean;)V

    :cond_4
    const-string v2, "allowSkip"

    .line 77
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 79
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/bz;->d(Ljava/lang/Boolean;)V

    :cond_5
    const-string v2, "allowTrackChange"

    .line 81
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 83
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/bz;->e(Ljava/lang/Boolean;)V

    :cond_6
    const-string v2, "openInBrowser"

    .line 85
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 87
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/bz;->g(Ljava/lang/Boolean;)V

    :cond_7
    const-string v2, "directLink"

    .line 89
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 91
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/bz;->f(Ljava/lang/Boolean;)V

    :cond_8
    const-string v2, "point"

    .line 94
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const-string v5, "Wrong value "

    const-string v6, "Bad value"

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_9

    move-wide v2, v7

    goto :goto_0

    :cond_9
    cmpg-double v4, v2, v9

    if-gez v4, :cond_a

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " for point in additionalData object"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/my/target/du;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_0
    const-string v4, "pointP"

    .line 107
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 108
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_b

    move-wide v11, v7

    goto :goto_1

    :cond_b
    cmpg-double v4, v11, v9

    if-gez v4, :cond_c

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " for pointP in additionalData object"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/my/target/du;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_1
    if-eqz v0, :cond_d

    cmpg-double v0, v2, v9

    if-gez v0, :cond_d

    cmpg-double v0, v11, v9

    if-gez v0, :cond_d

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    goto :goto_2

    :cond_d
    move-wide v7, v2

    :goto_2
    double-to-float v0, v7

    .line 128
    invoke-virtual {v1, v0}, Lcom/my/target/bz;->setPoint(F)V

    double-to-float v0, v11

    .line 129
    invoke-virtual {v1, v0}, Lcom/my/target/bz;->setPointP(F)V

    .line 131
    iget-object v0, p0, Lcom/my/target/du;->ex:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bf()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/bz;->d(Ljava/util/ArrayList;)V

    const-string v0, "serviceStatistics"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_f

    const/4 v3, 0x0

    .line 136
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 138
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 141
    iget-object v5, p0, Lcom/my/target/du;->ey:Lcom/my/target/em;

    invoke-virtual {v5, v4, v2}, Lcom/my/target/em;->a(Lorg/json/JSONObject;F)Lcom/my/target/dh;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 144
    invoke-virtual {v1, v4}, Lcom/my/target/bz;->a(Lcom/my/target/dh;)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 150
    :cond_f
    iget-object v0, p0, Lcom/my/target/du;->ey:Lcom/my/target/em;

    invoke-virtual {v1}, Lcom/my/target/bz;->bn()Lcom/my/target/di;

    move-result-object v3

    invoke-virtual {v1}, Lcom/my/target/bz;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, p1, v4, v2}, Lcom/my/target/em;->a(Lcom/my/target/di;Lorg/json/JSONObject;Ljava/lang/String;F)V

    return-object v1
.end method
