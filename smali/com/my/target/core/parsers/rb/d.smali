.class public Lcom/my/target/core/parsers/rb/d;
.super Ljava/lang/Object;
.source "RBSectionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;ILcom/my/target/core/models/d;Landroid/content/Context;)Lcom/my/target/core/models/d;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 266
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->h()I

    move-result v1

    const/4 v5, 0x5

    if-lt v1, v5, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    const-string v1, "Parsing additional data"

    sput-object v1, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 270
    const-string v1, "url"

    const-string v5, ""

    invoke-static {p0, v1, v5, v7, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    new-instance v6, Lcom/my/target/core/models/d;

    invoke-direct {v6, v1}, Lcom/my/target/core/models/d;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->c(I)V

    .line 277
    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->b(Ljava/lang/String;)V

    .line 278
    const-string v0, "id"

    .line 281
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->d()I

    move-result v1

    .line 278
    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->b(I)V

    .line 282
    const-string v0, "doAfter"

    invoke-static {p0, v0, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->a(Z)V

    .line 284
    const-string v0, "doOnEmptyResponseFromId"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->a(I)V

    .line 287
    const-string v0, "isMidrollPoint"

    invoke-static {p0, v0, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->b(Z)V

    .line 290
    invoke-virtual {v6}, Lcom/my/target/core/models/d;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/my/target/core/models/d;->o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 292
    :cond_2
    if-nez p2, :cond_7

    invoke-virtual {v6}, Lcom/my/target/core/models/d;->h()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 293
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 297
    :cond_3
    :goto_1
    const-string v1, "point"

    move-object v0, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v7, v0

    .line 301
    cmpl-float v0, v7, v8

    if-ltz v0, :cond_4

    invoke-virtual {v6, v7}, Lcom/my/target/core/models/d;->a(F)V

    .line 302
    :cond_4
    const-string v1, "pointP"

    move-object v0, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 306
    cmpl-float v1, v0, v8

    if-ltz v1, :cond_5

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->b(F)V

    .line 307
    :cond_5
    cmpg-float v1, v7, v8

    if-gez v1, :cond_6

    cmpg-float v0, v0, v8

    if-gez v0, :cond_6

    .line 308
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->f()F

    move-result v0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lcom/my/target/core/models/d;->f()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->a(F)V

    .line 311
    :cond_6
    :goto_2
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 312
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->b(Ljava/lang/String;)V

    .line 316
    :goto_3
    invoke-static {p0, p4}, Lcom/my/target/core/parsers/rb/f;->a(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 319
    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/k;)V

    goto :goto_4

    .line 294
    :cond_7
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->p()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_1

    .line 309
    :cond_8
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->b(F)V

    goto :goto_2

    .line 314
    :cond_9
    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 322
    :cond_a
    invoke-static {p0, p4}, Lcom/my/target/core/parsers/rb/f;->b(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 326
    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->c(Lcom/my/target/core/models/k;)V

    goto :goto_5

    .line 329
    :cond_b
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 331
    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/k;)V

    goto :goto_6

    .line 333
    :cond_c
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 335
    invoke-virtual {v6, v0}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/k;)V

    goto :goto_7

    :cond_d
    move-object v0, v6

    .line 338
    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/my/target/core/models/c;Ljava/util/ArrayList;Lcom/my/target/core/models/d;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/i;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/my/target/core/models/c;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/my/target/core/models/d;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/my/target/core/models/sections/i;"
        }
    .end annotation

    .prologue
    .line 53
    const-string v2, "Parsing section"

    sput-object v2, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 54
    sput-object p0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 55
    const-class v2, Lcom/my/target/core/parsers/rb/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    .line 57
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-static {p1, p0, v2, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    if-nez v2, :cond_1

    const/4 v9, 0x0

    .line 171
    :cond_0
    :goto_0
    return-object v9

    .line 60
    :cond_1
    const-string v3, "index"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-static {v2, v3, v4, v5, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 75
    move-object/from16 v0, p2

    invoke-virtual {v0, p0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v9

    .line 77
    if-nez v9, :cond_2

    .line 79
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Lcom/my/target/core/factories/e;->a(Ljava/lang/String;I)Lcom/my/target/core/models/sections/i;

    move-result-object v9

    .line 83
    :cond_2
    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    .line 85
    :cond_3
    const-string v3, "settings"

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-static {v2, v3, v4, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_4

    .line 90
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v9, v3, v0, v1}, Lcom/my/target/core/parsers/rb/e;->a(Lcom/my/target/core/models/sections/i;Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    .line 93
    :cond_4
    const-string v3, "instreamads"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 95
    const-string v3, "Parsing instream section"

    sput-object v3, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 97
    instance-of v3, v9, Lcom/my/target/core/models/sections/f;

    if-nez v3, :cond_5

    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    move-object v8, v9

    .line 98
    check-cast v8, Lcom/my/target/core/models/sections/f;

    .line 100
    const-string v3, "sections"

    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v2, v3, v4, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v11

    .line 103
    if-nez v11, :cond_6

    const/4 v9, 0x0

    goto :goto_0

    .line 105
    :cond_6
    invoke-virtual {v11}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v12

    .line 106
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 108
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    if-ge v10, v13, :cond_0

    .line 110
    const-string v2, "sections"

    move-object/from16 v0, p6

    invoke-static {v10, v12, v2, v0}, Lcom/my/target/core/parsers/rb/a;->b(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/my/target/core/enums/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 115
    invoke-static {v11, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 118
    if-eqz v3, :cond_7

    .line 120
    invoke-virtual {v8, v2}, Lcom/my/target/core/models/sections/f;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/k;

    move-result-object v2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/my/target/core/parsers/rb/d;->a(Lcom/my/target/core/models/sections/i;Lorg/json/JSONArray;Lcom/my/target/core/models/d;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    .line 108
    :cond_7
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 125
    :cond_8
    const-string v3, "instreamaudioads"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 127
    const-string v3, "Parsing audio section"

    sput-object v3, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 129
    instance-of v3, v9, Lcom/my/target/core/models/sections/g;

    if-nez v3, :cond_9

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v8, v9

    .line 130
    check-cast v8, Lcom/my/target/core/models/sections/g;

    .line 132
    const-string v3, "sections"

    const/4 v4, 0x1

    .line 133
    move-object/from16 v0, p6

    invoke-static {v2, v3, v4, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v11

    .line 135
    if-nez v11, :cond_a

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 137
    :cond_a
    invoke-virtual {v11}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v12

    .line 138
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 140
    const/4 v2, 0x0

    move v10, v2

    :goto_2
    if-ge v10, v13, :cond_0

    .line 142
    const-string v2, "sections"

    move-object/from16 v0, p6

    invoke-static {v10, v12, v2, v0}, Lcom/my/target/core/parsers/rb/a;->b(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/my/target/core/enums/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 148
    invoke-static {v11, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_b

    .line 153
    invoke-virtual {v8, v2}, Lcom/my/target/core/models/sections/g;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/c;

    move-result-object v2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/my/target/core/parsers/rb/d;->a(Lcom/my/target/core/models/sections/i;Lorg/json/JSONArray;Lcom/my/target/core/models/d;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    .line 140
    :cond_b
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_2

    .line 161
    :cond_c
    const-string v3, "banners"

    invoke-static {v2, v3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 164
    if-eqz v3, :cond_d

    move-object v2, v9

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 166
    invoke-static/range {v2 .. v7}, Lcom/my/target/core/parsers/rb/d;->a(Lcom/my/target/core/models/sections/i;Lorg/json/JSONArray;Lcom/my/target/core/models/d;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    .line 169
    :cond_d
    invoke-interface {v9}, Lcom/my/target/core/models/sections/i;->b()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private static a(Lcom/my/target/core/models/sections/i;Lorg/json/JSONArray;Lcom/my/target/core/models/d;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/sections/i;",
            "Lorg/json/JSONArray;",
            "Lcom/my/target/core/models/d;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 180
    const-string v0, "Parsing banners to section"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v1, v2

    .line 188
    :goto_0
    if-ge v1, v6, :cond_6

    .line 190
    const-string v0, "banners"

    .line 191
    invoke-static {v1, p1, v0, p5}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 196
    const-string v7, "type"

    const-string v8, ""

    invoke-static {v0, v7, v8, v2, p5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 198
    const-string v8, "additionalData"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 200
    invoke-static {v0, p0, v1, p2, p5}, Lcom/my/target/core/parsers/rb/d;->a(Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;ILcom/my/target/core/models/d;Landroid/content/Context;)Lcom/my/target/core/models/d;

    move-result-object v7

    .line 202
    if-eqz v7, :cond_0

    .line 204
    invoke-virtual {v7}, Lcom/my/target/core/models/d;->c()I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 205
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v7}, Lcom/my/target/core/models/d;->n()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7}, Lcom/my/target/core/models/d;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    :cond_2
    instance-of v0, p0, Lcom/my/target/core/models/sections/k;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 212
    check-cast v0, Lcom/my/target/core/models/sections/k;

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/sections/k;->a(Lcom/my/target/core/models/d;)Z

    goto :goto_1

    .line 213
    :cond_3
    instance-of v0, p0, Lcom/my/target/core/models/sections/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 214
    check-cast v0, Lcom/my/target/core/models/sections/c;

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/sections/c;->a(Lcom/my/target/core/models/d;)Z

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {p2, v7}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/d;)V

    goto :goto_1

    .line 223
    :cond_5
    invoke-static {v0, p0, p3, p4, p5}, Lcom/my/target/core/parsers/rb/b;->a(Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->a()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/my/target/core/models/banners/d;->addStats(Ljava/util/ArrayList;)V

    .line 228
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_6
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->p()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 234
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->p()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 235
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/d;

    .line 237
    invoke-interface {p0, v1, v0}, Lcom/my/target/core/models/sections/i;->a(ILcom/my/target/core/models/banners/d;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 238
    goto :goto_2

    .line 239
    :cond_7
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->p()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 248
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 250
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/core/models/d;

    .line 252
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->c()I

    move-result v5

    invoke-virtual {v1}, Lcom/my/target/core/models/d;->d()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 254
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/d;)V

    goto :goto_4

    .line 243
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/d;

    .line 245
    invoke-interface {p0, v0}, Lcom/my/target/core/models/sections/i;->a(Lcom/my/target/core/models/banners/d;)Z

    goto :goto_5

    .line 259
    :cond_c
    return-void

    :cond_d
    move v0, v1

    goto :goto_3
.end method
