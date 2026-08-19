.class public Lcom/my/target/dv;
.super Ljava/lang/Object;
.source "AudioBannerParser.java"


# instance fields
.field private final adConfig:Lcom/my/target/a;

.field private final context:Landroid/content/Context;

.field private final eA:Lcom/my/target/dw;

.field private final ez:Lcom/my/target/bz;


# direct methods
.method private constructor <init>(Lcom/my/target/da;Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    .line 45
    iput-object p3, p0, Lcom/my/target/dv;->adConfig:Lcom/my/target/a;

    .line 46
    iput-object p4, p0, Lcom/my/target/dv;->context:Landroid/content/Context;

    .line 47
    invoke-static {p2, p3, p4}, Lcom/my/target/dw;->b(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/dw;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/dv;->eA:Lcom/my/target/dw;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/my/target/ci;
    .locals 3

    .line 225
    invoke-static {}, Lcom/my/target/ci;->newBanner()Lcom/my/target/ci;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/my/target/dv;->eA:Lcom/my/target/dw;

    invoke-virtual {v1, p1, v0}, Lcom/my/target/dw;->a(Lorg/json/JSONObject;Lcom/my/target/ch;)V

    .line 227
    invoke-virtual {v0}, Lcom/my/target/ch;->getWidth()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/my/target/ch;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "assetWidth"

    .line 234
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setAssetWidth(I)V

    const-string v1, "assetHeight"

    .line 235
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setAssetHeight(I)V

    const-string v1, "expandedWidth"

    .line 236
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setExpandedWidth(I)V

    const-string v1, "expandedHeight"

    .line 237
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setExpandedHeight(I)V

    const-string v1, "staticResource"

    .line 239
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setStaticResource(Ljava/lang/String;)V

    const-string v1, "iframeResource"

    .line 240
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setIframeResource(Ljava/lang/String;)V

    const-string v1, "htmlResource"

    .line 241
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setHtmlResource(Ljava/lang/String;)V

    const-string v1, "apiFramework"

    .line 242
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setApiFramework(Ljava/lang/String;)V

    const-string v1, "adSlotID"

    .line 243
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/ci;->setAdSlotID(Ljava/lang/String;)V

    const-string v1, "required"

    .line 244
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "all"

    .line 247
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "any"

    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "none"

    .line 249
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong companion required attribute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bad value"

    invoke-direct {p0, v1, p1, p2}, Lcom/my/target/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v0, p1}, Lcom/my/target/ci;->setRequired(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0

    .line 229
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add companion banner with width "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/my/target/ch;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and height "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Lcom/my/target/ch;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Required field"

    .line 229
    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Lcom/my/target/da;Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/dv;
    .locals 1

    .line 31
    new-instance v0, Lcom/my/target/dv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/my/target/dv;-><init>(Lcom/my/target/da;Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 295
    invoke-static {p1}, Lcom/my/target/dq;->P(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->Q(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/dv;->adConfig:Lcom/my/target/a;

    .line 296
    invoke-virtual {p2}, Lcom/my/target/a;->getSlotId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->x(I)Lcom/my/target/dq;

    move-result-object p1

    .line 297
    invoke-virtual {p1, p3}, Lcom/my/target/dq;->S(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    .line 298
    invoke-virtual {p2}, Lcom/my/target/bz;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->R(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/dv;->context:Landroid/content/Context;

    .line 299
    invoke-virtual {p1, p2}, Lcom/my/target/dq;->q(Landroid/content/Context;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;Lcom/my/target/co;)V
    .locals 3

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/my/target/dv;->c(Lorg/json/JSONObject;Lcom/my/target/co;)V

    .line 118
    iget-object v0, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bi()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowClose(Z)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p2}, Lcom/my/target/co;->isAllowClose()Z

    move-result v0

    const-string v1, "allowClose"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowClose(Z)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bk()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowSeek(Z)V

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p2}, Lcom/my/target/co;->isAllowSeek()Z

    move-result v0

    const-string v1, "allowSeek"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowSeek(Z)V

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bl()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowSkip(Z)V

    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {p2}, Lcom/my/target/co;->isAllowSkip()Z

    move-result v0

    const-string v1, "allowSkip"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowSkip(Z)V

    .line 146
    :goto_2
    iget-object v0, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bm()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowTrackChange(Z)V

    goto :goto_3

    .line 153
    :cond_3
    invoke-virtual {p2}, Lcom/my/target/co;->isAllowTrackChange()Z

    move-result v0

    const-string v1, "allowTrackChange"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowTrackChange(Z)V

    .line 155
    :goto_3
    iget-object v0, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bj()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 158
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowPause(Z)V

    goto :goto_4

    .line 162
    :cond_4
    invoke-virtual {p2}, Lcom/my/target/co;->isAllowPause()Z

    move-result v0

    const-string v1, "hasPause"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowPause(Z)V

    .line 165
    :goto_4
    iget-object v0, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->getAllowCloseDelay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5

    .line 168
    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAllowCloseDelay(F)V

    goto :goto_5

    .line 172
    :cond_5
    invoke-virtual {p2}, Lcom/my/target/co;->getAllowCloseDelay()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "allowCloseDelay"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p2, p1}, Lcom/my/target/co;->setAllowCloseDelay(F)V

    :goto_5
    return-void
.end method

.method private c(Lorg/json/JSONObject;Lcom/my/target/co;)V
    .locals 11

    .line 179
    iget-object v0, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->getPoint()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "point"

    .line 182
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 185
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const-string v5, "Wrong value "

    const-string v6, "Bad value"

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    if-eqz v4, :cond_1

    move-wide v0, v7

    goto :goto_0

    :cond_1
    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " for point"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v4, v9}, Lcom/my/target/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/my/target/dv;->ez:Lcom/my/target/bz;

    invoke-virtual {v4}, Lcom/my/target/bz;->getPointP()F

    move-result v4

    float-to-double v9, v4

    cmpg-double v4, v9, v2

    if-gez v4, :cond_3

    const-string v4, "pointP"

    .line 200
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 203
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_4

    move-wide v9, v7

    goto :goto_1

    :cond_4
    cmpg-double p1, v9, v2

    if-gez p1, :cond_5

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " for pointP"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, p1, v4}, Lcom/my/target/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    cmpg-double p1, v0, v2

    if-gez p1, :cond_6

    cmpg-double p1, v9, v2

    if-gez p1, :cond_6

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    goto :goto_2

    :cond_6
    move-wide v7, v0

    :goto_2
    double-to-float p1, v7

    .line 219
    invoke-virtual {p2, p1}, Lcom/my/target/co;->setPoint(F)V

    double-to-float p1, v9

    .line 220
    invoke-virtual {p2, p1}, Lcom/my/target/co;->setPointP(F)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;Lcom/my/target/co;)Z
    .locals 5

    const-string v0, "mediafiles"

    .line 264
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 265
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 271
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 273
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "src"

    .line 276
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    invoke-static {v3}, Lcom/my/target/common/models/AudioData;->newAudioData(Ljava/lang/String;)Lcom/my/target/common/models/AudioData;

    move-result-object p1

    const-string v0, "bitrate"

    .line 280
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/my/target/common/models/AudioData;->setBitrate(I)V

    .line 281
    invoke-virtual {p2, p1}, Lcom/my/target/co;->setMediaData(Lcom/my/target/cd;)V

    const/4 p1, 0x1

    return p1

    .line 286
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad mediafile object, src = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Bad value"

    invoke-direct {p0, v4, v2, v3}, Lcom/my/target/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    const-string p1, "mediafiles array is empty"

    .line 267
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/my/target/co;)Z
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/my/target/dv;->eA:Lcom/my/target/dw;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/dw;->a(Lorg/json/JSONObject;Lcom/my/target/ch;)V

    .line 53
    invoke-virtual {p2}, Lcom/my/target/ch;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statistics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/my/target/dv;->c(Lorg/json/JSONObject;Lcom/my/target/co;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "duration"

    .line 59
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to set duration "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Required field"

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 66
    :cond_1
    invoke-virtual {p2}, Lcom/my/target/co;->isAutoPlay()Z

    move-result v0

    const-string v1, "autoplay"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAutoPlay(Z)V

    .line 67
    invoke-virtual {p2}, Lcom/my/target/co;->isHasCtaButton()Z

    move-result v0

    const-string v1, "hasCtaButton"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setHasCtaButton(Z)V

    .line 68
    invoke-virtual {p2}, Lcom/my/target/co;->getAdText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adText"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/my/target/co;->setAdText(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/my/target/dv;->b(Lorg/json/JSONObject;Lcom/my/target/co;)V

    const-string v0, "companionAds"

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 78
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p2}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/my/target/dv;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/my/target/ci;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {p2, v4}, Lcom/my/target/co;->addCompanion(Lcom/my/target/ci;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "shareButtons"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_6

    .line 97
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 102
    :cond_5
    invoke-static {}, Lcom/my/target/common/models/ShareButtonData;->newData()Lcom/my/target/common/models/ShareButtonData;

    move-result-object v4

    const-string v5, "name"

    .line 103
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/my/target/common/models/ShareButtonData;->setName(Ljava/lang/String;)V

    const-string v5, "url"

    .line 104
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/my/target/common/models/ShareButtonData;->setUrl(Ljava/lang/String;)V

    const-string v5, "imageUrl"

    .line 105
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/my/target/common/models/ShareButtonData;->setImageUrl(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, v4}, Lcom/my/target/co;->addShareButtonData(Lcom/my/target/common/models/ShareButtonData;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 110
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/my/target/dv;->d(Lorg/json/JSONObject;Lcom/my/target/co;)Z

    move-result p1

    return p1
.end method
