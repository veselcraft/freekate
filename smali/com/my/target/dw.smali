.class public Lcom/my/target/dw;
.super Ljava/lang/Object;
.source "CommonBannerParser.java"


# instance fields
.field private final adConfig:Lcom/my/target/a;

.field private cj:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final ey:Lcom/my/target/em;

.field private final ez:Lcom/my/target/bz;


# direct methods
.method private constructor <init>(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/my/target/dw;->ez:Lcom/my/target/bz;

    .line 75
    iput-object p2, p0, Lcom/my/target/dw;->adConfig:Lcom/my/target/a;

    .line 76
    iput-object p3, p0, Lcom/my/target/dw;->context:Landroid/content/Context;

    .line 77
    invoke-static {p1, p2, p3}, Lcom/my/target/em;->k(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/em;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/dw;->ey:Lcom/my/target/em;

    return-void
.end method

.method public static b(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/dw;
    .locals 1

    .line 38
    new-instance v0, Lcom/my/target/dw;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/dw;-><init>(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)V

    return-object v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 265
    invoke-static {p1}, Lcom/my/target/dq;->P(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->Q(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/dw;->adConfig:Lcom/my/target/a;

    .line 266
    invoke-virtual {p2}, Lcom/my/target/a;->getSlotId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->x(I)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/dw;->cj:Ljava/lang/String;

    .line 267
    invoke-virtual {p1, p2}, Lcom/my/target/dq;->S(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/dw;->ez:Lcom/my/target/bz;

    .line 268
    invoke-virtual {p2}, Lcom/my/target/bz;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->R(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/dw;->context:Landroid/content/Context;

    .line 269
    invoke-virtual {p1, p2}, Lcom/my/target/dq;->q(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/my/target/ch;)V
    .locals 7

    const-string v0, "id"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/dw;->cj:Ljava/lang/String;

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bannerID"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/dw;->cj:Ljava/lang/String;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/my/target/dw;->cj:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setId(Ljava/lang/String;)V

    const-string v0, "type"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setType(Ljava/lang/String;)V

    .line 95
    :cond_1
    invoke-virtual {p2}, Lcom/my/target/ch;->getWidth()I

    move-result v0

    const-string v1, "width"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setWidth(I)V

    .line 96
    invoke-virtual {p2}, Lcom/my/target/ch;->getHeight()I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setHeight(I)V

    const-string v0, "ageRestrictions"

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setAgeRestrictions(Ljava/lang/String;)V

    :cond_2
    const-string v0, "deeplink"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 107
    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setDeeplink(Ljava/lang/String;)V

    :cond_3
    const-string v1, "trackingLink"

    .line 109
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 112
    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setTrackingLink(Ljava/lang/String;)V

    :cond_4
    const-string v1, "bundle_id"

    .line 114
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 117
    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setBundleId(Ljava/lang/String;)V

    :cond_5
    const-string v1, "urlscheme"

    .line 119
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 122
    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setUrlscheme(Ljava/lang/String;)V

    .line 125
    :cond_6
    invoke-virtual {p2}, Lcom/my/target/ch;->isOpenInBrowser()Z

    move-result v1

    const-string v2, "openInBrowser"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setOpenInBrowser(Z)V

    .line 126
    invoke-virtual {p2}, Lcom/my/target/ch;->isUsePlayStoreAction()Z

    move-result v1

    const-string v2, "usePlayStoreAction"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setUsePlayStoreAction(Z)V

    .line 127
    invoke-virtual {p2}, Lcom/my/target/ch;->isDirectLink()Z

    move-result v1

    const-string v2, "directLink"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setDirectLink(Z)V

    .line 128
    invoke-virtual {p2}, Lcom/my/target/ch;->getPaidType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "paidType"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setPaidType(Ljava/lang/String;)V

    const-string v1, "navigationType"

    .line 130
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "store"

    .line 135
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setNavigationType(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_7
    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setNavigationType(Ljava/lang/String;)V

    :cond_8
    :goto_0
    const-string v0, "title"

    .line 142
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 145
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setTitle(Ljava/lang/String;)V

    :cond_9
    const-string v0, "description"

    .line 147
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 150
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setDescription(Ljava/lang/String;)V

    :cond_a
    const-string v0, "disclaimer"

    .line 152
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 155
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setDisclaimer(Ljava/lang/String;)V

    .line 157
    :cond_b
    invoke-virtual {p2}, Lcom/my/target/ch;->getVotes()I

    move-result v0

    const-string v1, "votes"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setVotes(I)V

    const-string v0, "category"

    .line 158
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 161
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setCategory(Ljava/lang/String;)V

    :cond_c
    const-string v0, "subcategory"

    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 166
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setSubCategory(Ljava/lang/String;)V

    :cond_d
    const-string v0, "domain"

    .line 168
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 171
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setDomain(Ljava/lang/String;)V

    .line 173
    :cond_e
    invoke-virtual {p2}, Lcom/my/target/ch;->getDuration()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setDuration(F)V

    const-string v0, "rating"

    .line 174
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Bad value"

    if-eqz v1, :cond_10

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 176
    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_f

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_f

    .line 179
    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setRating(F)V

    goto :goto_1

    .line 183
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse rating "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/my/target/dw;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_10
    :goto_1
    invoke-virtual {p2}, Lcom/my/target/ch;->getCtaText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctaText"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setCtaText(Ljava/lang/String;)V

    const-string v0, "iconLink"

    .line 189
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "iconWidth"

    .line 190
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "iconHeight"

    .line 191
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 194
    invoke-static {v1, v3, v4}, Lcom/my/target/common/models/ImageData;->newImageData(Ljava/lang/String;II)Lcom/my/target/common/models/ImageData;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setIcon(Lcom/my/target/common/models/ImageData;)V

    :cond_11
    const-string v1, "imageLink"

    .line 197
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "imageWidth"

    .line 198
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "imageHeight"

    .line 199
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 202
    invoke-static {v1, v3, v4}, Lcom/my/target/common/models/ImageData;->newImageData(Ljava/lang/String;II)Lcom/my/target/common/models/ImageData;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setImage(Lcom/my/target/common/models/ImageData;)V

    :cond_12
    const-string v1, "clickArea"

    .line 205
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 207
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_13

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad ClickArea mask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-direct {p0, v2, v1}, Lcom/my/target/dw;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 215
    :cond_13
    invoke-static {v1}, Lcom/my/target/ca;->h(I)Lcom/my/target/ca;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setClickArea(Lcom/my/target/ca;)V

    goto :goto_2

    :cond_14
    const-string v1, "extendedClickArea"

    .line 218
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    .line 220
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 223
    sget-object v1, Lcom/my/target/ca;->cZ:Lcom/my/target/ca;

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setClickArea(Lcom/my/target/ca;)V

    goto :goto_2

    .line 227
    :cond_15
    sget-object v1, Lcom/my/target/ca;->da:Lcom/my/target/ca;

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setClickArea(Lcom/my/target/ca;)V

    :cond_16
    :goto_2
    const-string v1, "advertisingLabel"

    const-string v2, ""

    .line 231
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/my/target/ch;->setAdvertisingLabel(Ljava/lang/String;)V

    const-string v1, "adChoices"

    .line 233
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 236
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "clickLink"

    .line 237
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 240
    invoke-static {v0}, Lcom/my/target/common/models/ImageData;->newImageData(Ljava/lang/String;)Lcom/my/target/common/models/ImageData;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/my/target/by;->a(Lcom/my/target/common/models/ImageData;Ljava/lang/String;)Lcom/my/target/by;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setAdChoices(Lcom/my/target/by;)V

    .line 244
    :cond_17
    iget-object v0, p0, Lcom/my/target/dw;->ey:Lcom/my/target/em;

    invoke-virtual {p2}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/dw;->cj:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/my/target/ch;->getDuration()F

    move-result p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/my/target/em;->a(Lcom/my/target/di;Lorg/json/JSONObject;Ljava/lang/String;F)V

    return-void
.end method
