.class public Lcom/my/target/j;
.super Lcom/my/target/c;
.source "InstreamAudioAdResponseParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/my/target/c;-><init>()V

    return-void
.end method

.method private a(Lcom/my/target/bz;Lcom/my/target/du;Lorg/json/JSONObject;Lcom/my/target/da;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 294
    invoke-virtual {p2, p3}, Lcom/my/target/du;->e(Lorg/json/JSONObject;)Lcom/my/target/bz;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-virtual {p4}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/my/target/bz;->s(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Lcom/my/target/bz;->ba()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 302
    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 305
    :cond_1
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p2}, Lcom/my/target/bz;->bb()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p2}, Lcom/my/target/bz;->aZ()Z

    move-result p3

    if-nez p3, :cond_3

    .line 308
    invoke-virtual {p1, p2}, Lcom/my/target/bz;->b(Lcom/my/target/bz;)V

    .line 309
    invoke-virtual {p1}, Lcom/my/target/bz;->getPosition()I

    move-result p1

    if-ltz p1, :cond_2

    .line 312
    invoke-virtual {p2, p1}, Lcom/my/target/bz;->setPosition(I)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p4}, Lcom/my/target/da;->getBannersCount()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/my/target/bz;->setPosition(I)V

    .line 319
    :cond_3
    :goto_0
    invoke-virtual {p4, p2}, Lcom/my/target/da;->c(Lcom/my/target/bz;)V

    return-void
.end method

.method private a(Lcom/my/target/en;Lcom/my/target/da;Lcom/my/target/bz;)V
    .locals 5

    .line 107
    invoke-virtual {p1}, Lcom/my/target/en;->bf()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/my/target/cv;->d(Ljava/util/ArrayList;)V

    .line 109
    invoke-virtual {p3}, Lcom/my/target/bz;->getPosition()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Lcom/my/target/en;->cS()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/co;

    .line 112
    invoke-virtual {p3}, Lcom/my/target/bz;->bi()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/my/target/co;->setAllowClose(Z)V

    .line 118
    :cond_0
    invoke-virtual {p3}, Lcom/my/target/bz;->getAllowCloseDelay()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 121
    invoke-virtual {v1, v2}, Lcom/my/target/co;->setAllowCloseDelay(F)V

    .line 124
    :cond_1
    invoke-virtual {p3}, Lcom/my/target/bz;->bj()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/my/target/co;->setAllowPause(Z)V

    .line 130
    :cond_2
    invoke-virtual {p3}, Lcom/my/target/bz;->bk()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/my/target/co;->setAllowSeek(Z)V

    .line 136
    :cond_3
    invoke-virtual {p3}, Lcom/my/target/bz;->bl()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 139
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/my/target/co;->setAllowSkip(Z)V

    .line 142
    :cond_4
    invoke-virtual {p3}, Lcom/my/target/bz;->bm()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 145
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/my/target/co;->setAllowTrackChange(Z)V

    .line 148
    :cond_5
    invoke-virtual {p3}, Lcom/my/target/bz;->bo()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 151
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/my/target/ch;->setDirectLink(Z)V

    .line 154
    :cond_6
    invoke-virtual {p3}, Lcom/my/target/bz;->bp()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 157
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/my/target/ch;->setOpenInBrowser(Z)V

    :cond_7
    const-string v2, "Close"

    .line 160
    invoke-virtual {v1, v2}, Lcom/my/target/co;->setCloseActionText(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Lcom/my/target/bz;->getPoint()F

    move-result v2

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_8

    .line 165
    invoke-virtual {v1, v2}, Lcom/my/target/co;->setPoint(F)V

    .line 167
    :cond_8
    invoke-virtual {p3}, Lcom/my/target/bz;->getPointP()F

    move-result v2

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_9

    .line 170
    invoke-virtual {v1, v2}, Lcom/my/target/co;->setPointP(F)V

    :cond_9
    if-ltz v0, :cond_a

    add-int/lit8 v2, v0, 0x1

    .line 174
    invoke-virtual {p2, v1, v0}, Lcom/my/target/da;->a(Lcom/my/target/co;I)V

    move v0, v2

    goto/16 :goto_0

    .line 178
    :cond_a
    invoke-virtual {p2, v1}, Lcom/my/target/da;->g(Lcom/my/target/co;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5

    .line 325
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/bz;

    .line 327
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/bz;

    .line 329
    invoke-virtual {v0}, Lcom/my/target/bz;->ba()I

    move-result v3

    invoke-virtual {v2}, Lcom/my/target/bz;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 331
    invoke-virtual {v2, v0}, Lcom/my/target/bz;->a(Lcom/my/target/bz;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/my/target/du;Lcom/my/target/da;Lcom/my/target/dv;Lcom/my/target/bz;)V
    .locals 13

    move-object/from16 v7, p3

    .line 240
    invoke-virtual/range {p3 .. p3}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/my/target/bz;->getPosition()I

    move-result v0

    .line 247
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v11, v0

    const/4 v12, 0x0

    .line 249
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_6

    .line 251
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    move-object/from16 v1, p4

    goto :goto_2

    :cond_1
    const-string v0, "type"

    .line 257
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "additionalData"

    .line 258
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object/from16 v1, p5

    move-object v2, p2

    move-object/from16 v4, p3

    move-object v5, v10

    move-object v6, v9

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/my/target/j;->a(Lcom/my/target/bz;Lcom/my/target/du;Lorg/json/JSONObject;Lcom/my/target/da;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 264
    :cond_2
    invoke-static {}, Lcom/my/target/co;->newAudioBanner()Lcom/my/target/co;

    move-result-object v0

    move-object/from16 v1, p4

    .line 265
    invoke-virtual {v1, v3, v0}, Lcom/my/target/dv;->a(Lorg/json/JSONObject;Lcom/my/target/co;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    invoke-virtual/range {p5 .. p5}, Lcom/my/target/bz;->bb()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    invoke-virtual/range {p5 .. p5}, Lcom/my/target/bz;->getPoint()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/co;->setPoint(F)V

    .line 271
    invoke-virtual/range {p5 .. p5}, Lcom/my/target/bz;->getPointP()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/co;->setPointP(F)V

    :cond_3
    if-ltz v11, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 275
    invoke-virtual {v7, v0, v11}, Lcom/my/target/da;->a(Lcom/my/target/co;I)V

    move v11, v2

    goto :goto_2

    .line 279
    :cond_4
    invoke-virtual {v7, v0}, Lcom/my/target/da;->g(Lcom/my/target/co;)V

    :cond_5
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_6
    move-object v0, p0

    .line 284
    invoke-direct {p0, v10, v9}, Lcom/my/target/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cx;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cx;
    .locals 0

    .line 59
    invoke-static {p4, p2, p5}, Lcom/my/target/en;->a(Lcom/my/target/a;Lcom/my/target/bz;Landroid/content/Context;)Lcom/my/target/en;

    move-result-object p4

    .line 60
    invoke-virtual {p4, p1}, Lcom/my/target/en;->V(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Lcom/my/target/bz;->bh()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "preroll"

    :goto_0
    if-nez p3, :cond_1

    .line 67
    invoke-static {}, Lcom/my/target/cx;->bQ()Lcom/my/target/cx;

    move-result-object p3

    .line 70
    :cond_1
    invoke-virtual {p3, p1}, Lcom/my/target/cx;->y(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p3

    .line 76
    :cond_2
    invoke-virtual {p4}, Lcom/my/target/en;->cS()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_3

    .line 78
    invoke-direct {p0, p4, p1, p2}, Lcom/my/target/j;->a(Lcom/my/target/en;Lcom/my/target/da;Lcom/my/target/bz;)V

    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p4}, Lcom/my/target/en;->cT()Lcom/my/target/bz;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 85
    invoke-virtual {p1}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/my/target/bz;->s(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Lcom/my/target/bz;->getPosition()I

    move-result p2

    if-ltz p2, :cond_4

    .line 89
    invoke-virtual {p4, p2}, Lcom/my/target/bz;->setPosition(I)V

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/my/target/da;->getBannersCount()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/my/target/bz;->setPosition(I)V

    .line 95
    :goto_1
    invoke-virtual {p1, p4}, Lcom/my/target/da;->c(Lcom/my/target/bz;)V

    :cond_5
    :goto_2
    return-object p3
.end method

.method private c(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cx;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cx;
    .locals 8

    .line 189
    invoke-virtual {p0, p1, p5}, Lcom/my/target/c;->a(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 195
    :cond_0
    invoke-virtual {p4}, Lcom/my/target/a;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    if-nez p3, :cond_2

    .line 203
    invoke-static {}, Lcom/my/target/cx;->bQ()Lcom/my/target/cx;

    move-result-object p3

    .line 205
    :cond_2
    invoke-static {}, Lcom/my/target/dz;->cQ()Lcom/my/target/dz;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/my/target/dz;->a(Lorg/json/JSONObject;Lcom/my/target/cx;)V

    .line 207
    invoke-static {p2, p4, p5}, Lcom/my/target/du;->a(Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/du;

    move-result-object v0

    const-string v1, "sections"

    .line 209
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 212
    invoke-virtual {p2}, Lcom/my/target/bz;->bh()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {p3, v1}, Lcom/my/target/cx;->y(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 218
    invoke-static {v4, p2, p4, p5}, Lcom/my/target/dv;->a(Lcom/my/target/da;Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/dv;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v6, p2

    .line 219
    invoke-direct/range {v1 .. v6}, Lcom/my/target/j;->a(Lorg/json/JSONObject;Lcom/my/target/du;Lcom/my/target/da;Lcom/my/target/dv;Lcom/my/target/bz;)V

    goto :goto_1

    .line 224
    :cond_3
    invoke-virtual {p3}, Lcom/my/target/cx;->bR()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/my/target/da;

    .line 226
    invoke-static {v4, p2, p4, p5}, Lcom/my/target/dv;->a(Lcom/my/target/da;Lcom/my/target/bz;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/dv;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v6, p2

    .line 227
    invoke-direct/range {v1 .. v6}, Lcom/my/target/j;->a(Lorg/json/JSONObject;Lcom/my/target/du;Lcom/my/target/da;Lcom/my/target/dv;Lcom/my/target/bz;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-object p3
.end method

.method public static f()Lcom/my/target/c;
    .locals 1

    .line 35
    new-instance v0, Lcom/my/target/j;

    invoke-direct {v0}, Lcom/my/target/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cv;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cv;
    .locals 0

    .line 31
    check-cast p3, Lcom/my/target/cx;

    invoke-virtual/range {p0 .. p5}, Lcom/my/target/j;->a(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cx;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cx;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cx;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cx;
    .locals 1

    .line 45
    invoke-static {p1}, Lcom/my/target/c;->isVast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/my/target/j;->b(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cx;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cx;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/my/target/j;->c(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cx;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cx;

    move-result-object p1

    return-object p1
.end method
